package com.htt.batdongsan.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "HomeControllerAdmin")
@RequestMapping("/admin")
public class HomeController {
	 @GetMapping("/home")
	    public String Home(){
	        return "admin/DanhSachNguoiDung";
	    }
    @GetMapping("/quan-ly-nguoi-dung")
    public String DanhSachNguoiDung(){
        return "admin/DanhSachNguoiDung";
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
    @GetMapping("/chi-tiet-nguoi-dung")
    public String ChiTietNguoiDung(){
        return "admin/ChiTietNguoiDung";
    }
    @GetMapping("/quan-ly-danh-muc")
    public String QuanLyDanhMuc(){
        return "admin/DanhMucTinTuc";
    }
    
    
   
}