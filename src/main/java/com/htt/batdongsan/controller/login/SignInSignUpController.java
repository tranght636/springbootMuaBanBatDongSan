package com.htt.batdongsan.controller.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.htt.batdongsan.model.UserModel;
import com.htt.batdongsan.service.UserService;
import com.htt.batdongsan.utils.AccountUtil;
import com.htt.batdongsan.utils.StringUtil;

@Controller
public class SignInSignUpController {
	
	private final String USER_ROLE = "USER";
	private final String ADMIN_ROLE = "ADMIN";
	
	@Autowired
	UserService userService;
	
    @GetMapping("/login")
    public String login(@RequestParam(value = "message", required = false) String message, ModelMap modelMap){
    	if(!StringUtil.isNullOrEmpty(message)) {
    		modelMap.addAttribute("message", message);
    	}
        return "signinsignup/DangNhap";
    }
    
    @GetMapping("/login-success")
    public String loginSuccess(){
		List<String> roleNames = AccountUtil.getRoleNames();
		if(roleNames.contains(ADMIN_ROLE)) {
			return "redirect:/admin/quan-ly-nguoi-dung";
		}
		if(roleNames.contains(USER_ROLE)) {
			return "redirect:/trang-ca-nhan/cap-nhat-thong-tin";
		}
		return "redirect:/403";
    }
    
    @GetMapping("/register")
    public String register(){
        return "signinsignup/DangKy";
    }
    
    @GetMapping("/403")
    @ResponseBody
    public String dinied(){
        return "Bạn không có quyền truy cập";
    }
    
    // post 
    @PostMapping("/sign-up")
    public String PostSignUp(@ModelAttribute UserModel userModel){
    	Integer result = userService.insert(userModel);
    	if(result > 0) {
    		return "redirect:/login";
    	}
    	return "redirect:/login?message=Đăng ký thất bại";
    }
}