package com.htt.batdongsan.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller(value = "HomeControllerWeb")
public class HomeController {
    
    @GetMapping("/")
    public String home(){
        return "web/TrangChu";
    }
    @GetMapping("/chi-tiet")
    public String ChiTiet(){
        return "web/ChiTietBatDongSan";
    }
    @GetMapping("/danh-sach")
    public String DanhSach(){
        return "web/DanhSach";
    }
    @GetMapping("/trang-ca-nhan")
    public String ThongTinCaNhan(){
        return "web/CapNhatThongTinCaNhan";
    }
    
    @PostMapping("/")
    public String home1(){
        return "web/TrangChu";
    }
    
}