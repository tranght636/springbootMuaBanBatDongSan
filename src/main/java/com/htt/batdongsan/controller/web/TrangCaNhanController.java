package com.htt.batdongsan.controller.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.htt.batdongsan.model.BaiDangModel;
import com.htt.batdongsan.model.UserModel;
import com.htt.batdongsan.service.BaiDangService;
import com.htt.batdongsan.service.DanhMucChungService;
import com.htt.batdongsan.service.DanhMucService;
import com.htt.batdongsan.service.DistrictService;
import com.htt.batdongsan.service.LoaiBatDongSanService;
import com.htt.batdongsan.service.ProvinceService;
import com.htt.batdongsan.service.StreetService;
import com.htt.batdongsan.service.UserService;
import com.htt.batdongsan.service.WardService;

@Controller(value = "TrangCaNhan")
@RequestMapping("/trang-ca-nhan")
public class TrangCaNhanController {
	
	@Autowired
	UserService userService;
	@Autowired
	DanhMucChungService danhMucChungService;
	@Autowired
	DanhMucService danhMucService;
	@Autowired
	LoaiBatDongSanService loaiBatDongSanService;
	@Autowired
	ProvinceService provinceService;
	@Autowired
	DistrictService districtService;
	@Autowired
	WardService wardService;
	@Autowired
	StreetService streetService;
	@Autowired
	BaiDangService baiDangService;
	
	
    @GetMapping("/cap-nhat-thong-tin")
    public String CapNhatThongTin(ModelMap modelMap){
    	//get id sesson
    	UserModel userModel = userService.selectOne(1);
    	modelMap.addAttribute("userModel", userModel);
        return "web/CapNhatThongTinCaNhan";
    }
    @GetMapping("/tao-bat-dong-san")
    public String TaoBDS(ModelMap modelMap){
    	// lấy danh sách TBDS_DanhMucChung
    	Object danhMucChungModel = danhMucChungService.selectAll();
    	modelMap.addAttribute("danhMucChungModel", danhMucChungModel);
    	// lấy danh sách Danh mục
    	Object danhMucModel = danhMucService.selectDanhMucByDanhMucChungId(4);
    	modelMap.addAttribute("danhMucModel", danhMucModel);
    	
    	// lấy danh sách loại Bất động sản
    	Object loaiBatDongSanModel = loaiBatDongSanService.selectAll();
    	modelMap.addAttribute("loaiBatDongSanModel", loaiBatDongSanModel);
    	// lấy danh sách tỉnh/ thành phố
    	Object provinceModel = provinceService.selectAll();
    	modelMap.addAttribute("provinceModel", provinceModel);
    	// lấy danh sách Quận/ huyện
    	Object districtModel = districtService.selectDistrictByProvinceId(30);
    	modelMap.addAttribute("districtModel", districtModel);
    	
    	// lấy danh sách Phường/Xã
    	Object wardModel = wardService.selectWardbyDistrictIdAndProvinceId(388, 30);
    	modelMap.addAttribute("wardModel", wardModel);
    	
    	// lấy danh sách đường
    	Object streetModel = streetService.selectStreetbyDistrictIdAndProvinceId(388, 30);
    	modelMap.addAttribute("streetModel", streetModel);
    	
        return "web/TaoBatDongSan";
    }
    
    @GetMapping("/bat-dong-san-cho-giao-dich")
    public String BDSChoGiaoDich(ModelMap modelMap) {
    	Integer user_id = 1;
    	Object BDSChoGiaoDich = baiDangService.BDSChoGiaoDichByUserId(user_id);
		modelMap.addAttribute("BDSChoGiaoDich", BDSChoGiaoDich);
    	return "web/BatDongSanChoGiaoDich";
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
    public String ChiTietBDS(@RequestParam("id") Integer id, ModelMap modelMap){
    	Object baiDangModel = baiDangService.selectOne(id);
    	modelMap.addAttribute("baiDangModel", baiDangModel);
        return "admin/ChiTietBatDongSan";
    }
    @GetMapping("/sua-bat-dong-san")
    public String SuaBDS(@RequestParam("id") Integer id, ModelMap modelMap){
    	// lấy danh sách TBDS_DanhMucChung
    	Object danhMucChungModel = danhMucChungService.selectAll();
    	modelMap.addAttribute("danhMucChungModel", danhMucChungModel);
    	// lấy danh sách Danh mục
    	Object danhMucModel = danhMucService.selectDanhMucByDanhMucChungId(4);
    	modelMap.addAttribute("danhMucModel", danhMucModel);
    	
    	// lấy danh sách loại Bất động sản
    	Object loaiBatDongSanModel = loaiBatDongSanService.selectAll();
    	modelMap.addAttribute("loaiBatDongSanModel", loaiBatDongSanModel);
    	// lấy danh sách tỉnh/ thành phố
    	Object provinceModel = provinceService.selectAll();
    	modelMap.addAttribute("provinceModel", provinceModel);
    	// lấy danh sách Quận/ huyện
    	Object districtModel = districtService.selectDistrictByProvinceId(30);
    	modelMap.addAttribute("districtModel", districtModel);
    	
    	// lấy danh sách Phường/Xã
    	Object wardModel = wardService.selectWardbyDistrictIdAndProvinceId(388, 30);
    	modelMap.addAttribute("wardModel", wardModel);
    	
    	// lấy danh sách đường
    	Object streetModel = streetService.selectStreetbyDistrictIdAndProvinceId(388, 30);
    	modelMap.addAttribute("streetModel", streetModel);
    	
    	
    	// lấy bất động sản cần sửa
//    	BaiDangModel baiDangModel = baiDangService.selectOne(id);
//    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	// lấy danh mục chung
    	//Object danhMucChungByDanhMucRieng = danhMucChungService.selectOne(baiDangModel.getDanh_muc_id());
    	//modelMap.addAttribute("danhMucChungByDanhMucRieng", danhMucChungByDanhMucRieng);
    	
        return "web/SuaBatDongSan";
    }
    
    
    
    
    @GetMapping("/bat-dong-san-yeu-thich")
    public String BDSYeuThich(ModelMap modelMap){
    	Integer user_id = 1;
    	Object BDSYeuThich = baiDangService.BDSYeuThichByUserId(user_id);
		modelMap.addAttribute("BDSYeuThich", BDSYeuThich);
        return "web/BatDongSanYeuThich";
    }
    
    @PostMapping("/cap-nhat-thong-tin")
    public String updateUserInfo(@ModelAttribute UserModel userModel) {
    	Integer result = userService.update(userModel);
    	if(result > 0) {
    		return "redirect:/trang-ca-nhan/cap-nhat-thong-tin";
    	}
    	return "redirect:/trang-ca-nhan/cap-nhat-thong-tin";
    }
    
    
    
    
    
    
    
    
    
    //post
    @PostMapping("/tao-bat-dong-san")
    public String PostTaoBDS(@ModelAttribute BaiDangModel baiDangModel){
    	
    	Integer result = baiDangService.insert(baiDangModel);
    	if(result > 0) {
    		return "redirect:/trang-ca-nhan/tao-bat-dong-san";
    	}
    	return "redirect:/trang-ca-nhan/tao-bat-dong-san?message=Tạo bài đăng thất bại";
    	
    }
   
}