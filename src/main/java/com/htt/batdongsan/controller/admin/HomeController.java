package com.htt.batdongsan.controller.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.htt.batdongsan.model.BaiDangModel;
import com.htt.batdongsan.model.UserModel;
import com.htt.batdongsan.service.BaiDangService;
import com.htt.batdongsan.service.RoleService;
import com.htt.batdongsan.service.UserService;
import com.htt.batdongsan.utils.AccountUtil;

@Controller(value = "HomeControllerAdmin")
@RequestMapping("/admin")
public class HomeController {
	@Autowired
	UserService userService;
	@Autowired
	BaiDangService baiDangService;
	@Autowired
	AccountUtil accountUtil;
	@Autowired
	RoleService roleService;
	
	@GetMapping("/quan-ly-nguoi-dung")
	public String DanhSachNguoiDung(ModelMap modelMap) {
		Object userDangHoatDong = userService.selectListUser(1);
		modelMap.addAttribute("userDangHoatDong", userDangHoatDong);
		Object userDaXoa = userService.selectListUser(-1);
		modelMap.addAttribute("userDaXoa", userDaXoa);
		Object roles = roleService.selectAll();
		modelMap.addAttribute("roles", roles);
		return "admin/DanhSachNguoiDung";
	}

	@GetMapping("/chi-tiet-nguoi-dung")
	public String ChiTietNguoiDung(HttpServletRequest request, @RequestParam("user-id") Integer id, ModelMap modelMap) {
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
		
		Object BDSDaMuaHoacDaThue = baiDangService.BDSDaMuaHoacDaThue(id);
		modelMap.addAttribute("BDSDaMuaHoacDaThue", BDSDaMuaHoacDaThue);
		
		Object BDSDaBanHoacDaChoThue = baiDangService.BDSDaBanHoacDaChoThue(id);
		modelMap.addAttribute("BDSDaBanHoacDaChoThue", BDSDaBanHoacDaChoThue);
		

		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangService.select()) {
    		String idImgs = baiDang.getImg_id();
    		if(idImgs != null && !idImgs.equals("")) {
    			String idImg = idImgs.split("-")[0];
    			String path = request.getContextPath();
    			path += "/api/file/" + idImg;
    			mapUrl.put(baiDang.getId(), path);
    		} else {
    			mapUrl.put(baiDang.getId(), "");
    		}
    	}
    	modelMap.addAttribute("mapUrl", mapUrl);
    	
		return "admin/ChiTietNguoiDung";
	}

	@GetMapping("/cap-nhat-thong-tin")
	public String CapNhatThongTin(ModelMap modelMap) {
		UserModel userModel = accountUtil.getUser();
		modelMap.addAttribute("userModel",userModel );
    	
		return "web/CapNhatThongTinCaNhan";
	}

	@GetMapping("/phan-hoi")
	public String PhanHoi() {
		return "admin/PhanHoi";
	}

	@GetMapping("/bat-dong-san-yeu-thich")
	public String BDSYeuThich(HttpServletRequest request, ModelMap modelMap) {
		Object BDSYeuThich = baiDangService.BDSYeuThichAllDesc();
		modelMap.addAttribute("BDSYeuThich", BDSYeuThich);
		
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangService.select()) {
    		String idImgs = baiDang.getImg_id();
    		if(idImgs != null && !idImgs.equals("")) {
    			String idImg = idImgs.split("-")[0];
    			String path = request.getContextPath();
    			path += "/api/file/" + idImg;
    			mapUrl.put(baiDang.getId(), path);
    		} else {
    			mapUrl.put(baiDang.getId(), "");
    		}
    	}
    	modelMap.addAttribute("mapUrl", mapUrl);
		
		return "admin/BatDongSanYeuThich";
	}

	@GetMapping("/bat-dong-san-cho-xac-nhan")
	public String BDSChoXacNhan(HttpServletRequest request, ModelMap modelMap) {
		Object BDSChoXacNhan = baiDangService.BDSChoXacNhanAll();
		modelMap.addAttribute("BDSChoXacNhan", BDSChoXacNhan);
		
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangService.select()) {
    		String idImgs = baiDang.getImg_id();
    		if(idImgs != null && !idImgs.equals("")) {
    			String idImg = idImgs.split("-")[0];
    			String path = request.getContextPath();
    			path += "/api/file/" + idImg;
    			mapUrl.put(baiDang.getId(), path);
    		} else {
    			mapUrl.put(baiDang.getId(), "");
    		}
    	}
    	modelMap.addAttribute("mapUrl", mapUrl);
    	
		return "admin/BatDongSanChoXacNhan";
	}

	@GetMapping("/bat-dong-san-cho-giao-dich")
	public String BDSChoGiaoDich(HttpServletRequest request, ModelMap modelMap) {
		Object BDSChoGiaoDich = baiDangService.BDSChoGiaoDichAll();
		modelMap.addAttribute("BDSChoGiaoDich", BDSChoGiaoDich);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangService.select()) {
    		String idImgs = baiDang.getImg_id();
    		if(idImgs != null && !idImgs.equals("")) {
    			String idImg = idImgs.split("-")[0];
    			String path = request.getContextPath();
    			path += "/api/file/" + idImg;
    			mapUrl.put(baiDang.getId(), path);
    		} else {
    			mapUrl.put(baiDang.getId(), "");
    		}
    	}
    	modelMap.addAttribute("mapUrl", mapUrl);
		return "admin/BatDongSanChoGiaoDich";
	}

	@GetMapping("/bat-dong-san-bi-cam")
	public String BDSBiCam(HttpServletRequest request, ModelMap modelMap) {
		Object BDSBiCam = baiDangService.BDSBiCamAll();
		modelMap.addAttribute("BDSBiCam", BDSBiCam);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangService.select()) {
    		String idImgs = baiDang.getImg_id();
    		if(idImgs != null && !idImgs.equals("")) {
    			String idImg = idImgs.split("-")[0];
    			String path = request.getContextPath();
    			path += "/api/file/" + idImg;
    			mapUrl.put(baiDang.getId(), path);
    		} else {
    			mapUrl.put(baiDang.getId(), "");
    		}
    	}
    	modelMap.addAttribute("mapUrl", mapUrl);
		return "admin/BatDongSanBiCam";
	}

	@GetMapping("/bao-cao-thong-ke")
	public String BaoCaoThongKe() {
		return "admin/BaoCaoThongKe";
	}

	@GetMapping("/chi-tiet-bat-dong-san-admin")
	public String ChiTietBatDongSan(HttpServletRequest request, @RequestParam("id") Integer id, ModelMap modelMap) {
		
		BaiDangModel baiDangModel = baiDangService.selectOne(id);
    	
    	List<String> urlImg = new ArrayList<String>();
    	String idImgs = baiDangModel.getImg_id();
		if(idImgs != null && !idImgs.equals("")) {
			String[] idImg = idImgs.split("-");
			for(int i = 0; i < idImg.length; i++) {
				String path = request.getContextPath();
				path += "/api/file/" + idImg[i];
				urlImg.add(path);
			}
		}
		modelMap.addAttribute("urlImg1", urlImg.get(0));
		urlImg.remove(0);
		modelMap.addAttribute("urlImg", urlImg);
		modelMap.addAttribute("baiDangModel", baiDangModel);
		return "admin/ChiTietBatDongSanAdmin";
	}

	@GetMapping("/daytin")
	public String QuanLyDanhMuc(HttpServletRequest request, ModelMap modelMap) {
		Object BDSChoDayTin = baiDangService.SelectAllBDSChoDayTin();
		modelMap.addAttribute("BDSChoDayTin", BDSChoDayTin);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangService.select()) {
    		String idImgs = baiDang.getImg_id();
    		if(idImgs != null && !idImgs.equals("")) {
    			String idImg = idImgs.split("-")[0];
    			String path = request.getContextPath();
    			path += "/api/file/" + idImg;
    			mapUrl.put(baiDang.getId(), path);
    		} else {
    			mapUrl.put(baiDang.getId(), "");
    		}
    	}
    	modelMap.addAttribute("mapUrl", mapUrl);
		return "admin/DayBatDongSan";
	}

}