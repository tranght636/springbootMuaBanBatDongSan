package com.htt.batdongsan.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SignInSignUpController {
    @GetMapping("/sign-in")
    public String login(){
        return "signinsignup/DangNhap";
    }
    @GetMapping("/sign-up")
    public String register(){
        return "signinsignup/DangKy";
    }
}