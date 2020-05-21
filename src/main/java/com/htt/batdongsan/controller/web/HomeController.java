package com.htt.batdongsan.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller(value = "HomeControllerWeb")
public class HomeController {
    
    @GetMapping("/home")
    public String home(){
        return "web/Home";
    }
}