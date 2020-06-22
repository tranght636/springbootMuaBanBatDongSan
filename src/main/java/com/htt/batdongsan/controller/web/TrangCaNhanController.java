package com.htt.batdongsan.controller.web;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "TrangCaNhan")
@RequestMapping("/trang-ca-nhan")
public class TrangCaNhanController {
    @GetMapping("/cap-nhat-thong-tin")
    public String CapNhatThongTin(){
    	
        return "web/CapNhatThongTinCaNhan";
    }
    @GetMapping("/bat-dong-san-cho-giao-dich")
    public String BDSChoGiaoDich() {
    	return "web/BatDongSanChoGiaoDich";
    }
    @GetMapping("/tao-bat-dong-san")
    public String TaoBDS(){
        return "web/TaoBatDongSan";
    }
    @GetMapping("/cap-nhat-bat-dong-san")
    public String CapNhatBDS(){
        return "web/CapNhatThongTinBatDongSan";
    }
    @GetMapping("/bat-dong-san-cho-xac-nhan")
    public String ChoXacNhanBDS(){
        return "web/BatDongSanChoXacNhan";
    }
    @GetMapping("/bat-dong-san-da-mua-hoac-da-thue")
    public String BDSDaMuaHoacDaThue(){
        return "web/BatDongSanDaMuaHoacDaThue";
    }
    @GetMapping("/bat-dong-san-da-ban-hoac-da-cho-thue")
    public String BDSDaBanHoacDaChoThue(){
        return "web/BatDongSanDaBanHoacDaChoThue";
    }
    
    @GetMapping("/bat-dong-san-bi-cam")
    public String BDSBiCam(){
        return "web/BatDongSanBiCam";
    }
    
    @GetMapping("/bat-dong-san-da-xoa")
    public String BDSDaXoa(){
        return "web/BatDongSanDaXoa";
    }
    
    @GetMapping("/bat-dong-san-day-tin")
    public String BDSDayTin(){
        return "web/BatDongSanDayTin";
    }
    
    @GetMapping("/chi-tiet-bat-dong-san")
    public String ChiTietBDS(){
        return "admin/ChiTietBatDongSan";
    }
    
    
}