package com.htt.batdongsan.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.htt.batdongsan.service.BaiDangService;


@Controller(value = "HomeControllerWeb")
public class HomeController {
	@Autowired
	BaiDangService baiDangService;
	
    @GetMapping("/")
    public String home(ModelMap modelMap){
    	// lấy danh sách TBDS_DanhMucChung
    	Object baiDangModel = baiDangService.selectTop4All();
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	Object baiDangModel2 = baiDangService.selectTop4New();
    	modelMap.addAttribute("baiDangModel2", baiDangModel2);
    	Object baiDangModel3 = baiDangService.selectTop4DuAn();
    	modelMap.addAttribute("baiDangModel3", baiDangModel3);
    	
        return "web/TrangChu";
    }
    @GetMapping("/tin-rao-noi-bat")
    public String TinRaoNoiBat(ModelMap modelMap){
    	// lấy danh sách TBDS_DanhMucChung
    	Object baiDangModel = baiDangService.selectAll();
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	
        return "web/DanhSach";
    }
    @GetMapping("/chi-tiet")
    public String ChiTiet( @RequestParam("id") Integer id, ModelMap modelMap){
    	Object baiDangModel = baiDangService.selectOne(id);
    	modelMap.addAttribute("baiDangModel", baiDangModel);
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