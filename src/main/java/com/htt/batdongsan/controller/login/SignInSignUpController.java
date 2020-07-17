package com.htt.batdongsan.controller.login;

import java.util.List;

import com.htt.batdongsan.model.UserModel;
import com.htt.batdongsan.service.UserRoleService;
import com.htt.batdongsan.service.UserService;
import com.htt.batdongsan.utils.AccountUtil;
import com.htt.batdongsan.utils.EncodedPasswordUtil;
import com.htt.batdongsan.utils.StringUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SignInSignUpController {

	private final String USER_ROLE = "USER";
	private final String ADMIN_ROLE = "ADMIN";

	@Autowired
	UserService userService;
	@Autowired
	UserRoleService userRoleService;

	@GetMapping("/login")
	public String login(@RequestParam(value = "message", required = false) String message, ModelMap modelMap) {
		if (!StringUtil.isNullOrEmpty(message)) {
			modelMap.addAttribute("message", message);
		}
		return "signinsignup/DangNhap";
	}

	@GetMapping("/login-success")
	public String loginSuccess() {
		List<String> roleNames = AccountUtil.getRoleNames();
		if (roleNames.contains(ADMIN_ROLE)) {
			return "redirect:/admin/quan-ly-nguoi-dung";
		}
		if (roleNames.contains(USER_ROLE)) {
			return "redirect:/trang-ca-nhan/cap-nhat-thong-tin";
		}
		return "redirect:/403";
	}

	@GetMapping("/register")
	public String register() {
		return "signinsignup/DangKy";
	}

	@GetMapping("/change-password")
	public String changePassword(@RequestParam(value = "message", required = false) String message, ModelMap modelMap) {
		if (message != null && message.equals("token_khong_dung")) {
			modelMap.addAttribute("message", "Token không hợp lệ");
		}
		return "signinsignup/ChangePassword";
	}

	@GetMapping("/forgot-password")
	public String forgetPassword(@RequestParam(value = "message", required = false) String message, ModelMap modelMap) {
		if (message != null && message.equals("email_khong_dung")) {
			modelMap.addAttribute("message", "Email không hợp lệ");
		}
		return "signinsignup/QuenMatKhau";
	}

	@GetMapping("/403")
	@ResponseBody
	public String dinied() {
		return "Bạn không có quyền truy cập";
	}

	// post
	@PostMapping("/sign-up")
	public String PostSignUp(@ModelAttribute UserModel userModel) {
		userModel.setPassword(EncodedPasswordUtil.encode(userModel.getPassword()));
		userModel.setStatus(1);
		Integer result = userService.insert(userModel);
		if (result > 0) {
			Integer user_id = userService.selectOne(userModel.getEmail()).getId();
			userRoleService.insert(user_id, 1);
			return "redirect:/login";
		}
		return "redirect:/login?message=Đăng ký thất bại";
	}

	@PostMapping("/change-password")
	public String postChangePassword(@ModelAttribute UserModel userModel, ModelMap modelMap) {
		UserModel user = userService.selectOne(userModel.getEmail());
		if (user != null && user.getToken_reset_password().equals(userModel.getToken_reset_password())) {
			String password = EncodedPasswordUtil.encode(userModel.getPassword());
			userService.changePassword(userModel.getEmail(), password);
			return "redirect:/login";
		}
		return "redirect:/change-password?message=token_khong_dung";
	}

	// post
	@PostMapping("/create-user")
	public String createUser(@ModelAttribute UserModel userModel) {
		userModel.setPassword(EncodedPasswordUtil.encode(userModel.getPassword()));
		userModel.setStatus(1);
		Integer result = userService.insert(userModel);
		if (result > 0) {
			Integer user_id = userService.selectOne(userModel.getEmail()).getId();
			Integer roleId = userModel.getRoleId();
			System.out.println(roleId);
			if (roleId == 3) {
				userRoleService.insert(user_id, 3);
			}
			return "redirect:/admin/quan-ly-nguoi-dung";
		}
		// return "redirect:/login?message=Đăng ký thất bại";
		return "redirect:/admin/quan-ly-nguoi-dung";
	}
}