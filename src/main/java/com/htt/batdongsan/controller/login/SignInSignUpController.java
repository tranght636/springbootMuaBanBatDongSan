package com.htt.batdongsan.controller.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.htt.batdongsan.model.UserModel;
import com.htt.batdongsan.service.UserService;

@Controller
public class SignInSignUpController {
	@Autowired
	UserService userService;
	
	
    @GetMapping("/sign-in")
    public String login(){
        return "signinsignup/DangNhap";
    }
    @GetMapping("/sign-up")
    public String register(){
        return "signinsignup/DangKy";
    }
    
    // post 
    @PostMapping("/sign-up")
    public String PostSignUp(@ModelAttribute UserModel userModel){
    	Integer result = userService.insert(userModel);
    	if(result > 0) {
    		return "redirect:/sign-in";
    	}
    	return "redirect:/sign-up?message=Đăng ký thất bại";
    }
}