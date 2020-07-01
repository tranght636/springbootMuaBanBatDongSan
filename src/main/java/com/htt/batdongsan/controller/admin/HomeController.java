package com.htt.batdongsan.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.htt.batdongsan.service.BaiDangService;
import com.htt.batdongsan.service.UserService;

@Controller(value = "HomeControllerAdmin")
@RequestMapping("/admin")
public class HomeController {
	@Autowired
	UserService userService;
	@Autowired 
	BaiDangService baiDangService;
	
    @GetMapping("/quan-ly-nguoi-dung")
    public String DanhSachNguoiDung(ModelMap modelMap){
    	Object userDangHoatDong = userService.selectListUser(1);
    	modelMap.addAttribute("userDangHoatDong", userDangHoatDong);
    	Object userDaXoa = userService.selectListUser(-1);
    	modelMap.addAttribute("userDaXoa", userDaXoa);
        return "admin/DanhSachNguoiDung";
    }
    @GetMapping("/chi-tiet-nguoi-dung")
    public String ChiTietNguoiDung( @RequestParam("user-id") Integer id, ModelMap modelMap){
    	Object userModel = userService.selectUser(id);
    	modelMap.addAttribute("userModel", userModel);
    	
    	Object BDSYeuThich = baiDangService.BDSYeuThich(id);
    	modelMap.addAttribute("BDSYeuThich", BDSYeuThich);
    	
    	Object BDSChoXacNhan = baiDangService.BDSChoXacNhan(id);
    	modelMap.addAttribute("BDSChoXacNhan", BDSChoXacNhan);
    	
    	Object BDSChoGiaoDich = baiDangService.BDSChoGiaoDich(id);
    	modelMap.addAttribute("BDSChoGiaoDich", BDSChoGiaoDich);
    	
    	Object BDSDayTin = baiDangService.BDSDayTin(id);
    	modelMap.addAttribute("BDSDayTin", BDSDayTin);
    	
    	Object BDSBiCam = baiDangService.BDSBiCam(id);
    	modelMap.addAttribute("BDSBiCam", BDSBiCam);
    	
    	Object BDSBiXoa = baiDangService.BDSBiXoa(id);
    	modelMap.addAttribute("BDSBiXoa", BDSBiXoa);
    	
    	
    	
        return "admin/ChiTietNguoiDung";
    }
    @GetMapping("/cap-nhat-thong-tin")
    public String CapNhatThongTin(){
        return "web/CapNhatThongTinCaNhan";
    }
    @GetMapping("/phan-hoi")
    public String PhanHoi(){
        return "admin/PhanHoi";
    }
    
    @GetMapping("/bat-dong-san-yeu-thich")
    public String BDSYeuThich(){
        return "admin/BatDongSanYeuThich";
    }
    
    @GetMapping("/bat-dong-san-cho-xac-nhan")
    public String BDSChoXacNhan(){
        return "admin/BatDongSanChoXacNhan";
    }
    @GetMapping("/bat-dong-san-cho-giao-dich")
    public String BDSChoGiaoDich(){
        return "admin/BatDongSanChoXacNhan";
    }
    
    @GetMapping("/bat-dong-san-bi-cam")
    public String BDSBiCam(){
        return "admin/BatDongSanBiCam";
    }
    
    @GetMapping("/bao-cao-thong-ke")
    public String BaoCaoThongKe(){
        return "admin/BaoCaoThongKe";
    }
    @GetMapping("/chi-tiet-bat-dong-san")
    public String ChiTietBatDongSan(){
        return "admin/ChiTietBatDongSan";
    }
   
    @GetMapping("/quan-ly-danh-muc")
    public String QuanLyDanhMuc(){
        return "admin/DanhMucTinTuc";
    }
    
    
   
}