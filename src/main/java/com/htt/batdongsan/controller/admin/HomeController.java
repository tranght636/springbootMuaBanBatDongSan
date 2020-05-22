package com.htt.batdongsan.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "HomeControllerAdmin")
@RequestMapping("/admin")
public class HomeController {
    @GetMapping("/home")
    public String home(){
    	
        return "admin/Home";
    }
}