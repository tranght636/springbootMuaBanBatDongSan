package com.htt.batdongsan.controller.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.htt.batdongsan.model.BaiDangModel;
import com.htt.batdongsan.model.DanhMucChungModel;
import com.htt.batdongsan.model.DanhMucModel;
import com.htt.batdongsan.model.ThongTinDayTinModel;
import com.htt.batdongsan.model.UserModel;
import com.htt.batdongsan.service.BaiDangService;
import com.htt.batdongsan.service.DanhMucChungService;
import com.htt.batdongsan.service.DanhMucService;
import com.htt.batdongsan.service.DistrictService;
import com.htt.batdongsan.service.LoaiBatDongSanService;
import com.htt.batdongsan.service.ProvinceService;
import com.htt.batdongsan.service.StreetService;
import com.htt.batdongsan.service.ThongTinDayTinService;
import com.htt.batdongsan.service.UserService;
import com.htt.batdongsan.service.WardService;
import com.htt.batdongsan.utils.AccountUtil;

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
	@Autowired
	AccountUtil accountUtil;
	@Autowired
	ThongTinDayTinService thongTinDayTinService;

	@GetMapping("/cap-nhat-thong-tin")
	public String CapNhatThongTin(ModelMap modelMap) {
		UserModel userModel = accountUtil.getUser();
		modelMap.addAttribute("userModel", userModel);

		return "web/CapNhatThongTinCaNhan";
	}
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("application");

	@GetMapping("/tao-bat-dong-san")
	public String TaoBDS(ModelMap modelMap, @RequestParam(value="message", required = false) String message) {
		if(message!=null) {
			if( message.equals("TBDSThanhCong")) {
				modelMap.addAttribute("message", "Tạo bất động sản thành công! Mời bạn tạo thêm bất động sản mới");
			}else if(message.equals("TBDSThatBai") ){
			modelMap.addAttribute("message", "Tạo bất động sản thất bại!!");
			}
		}
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
	public String BDSChoGiaoDich(HttpServletRequest request, ModelMap modelMap) {
		UserModel userModel = accountUtil.getUser();
		Integer user_id = userModel.getId();
		Object BDSChoGiaoDich = baiDangService.BDSChoGiaoDichByUserId(user_id);
		modelMap.addAttribute("BDSChoGiaoDich", BDSChoGiaoDich);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
		for (BaiDangModel baiDang : baiDangService.select()) {
			String idImgs = baiDang.getImg_id();
			if (idImgs != null && !idImgs.equals("")) {
				String idImg = idImgs.split("-")[0];
				String path = request.getContextPath();
				path += "/api/file/" + idImg;
				mapUrl.put(baiDang.getId(), path);
			} else {
				mapUrl.put(baiDang.getId(), "");
			}
		}
		modelMap.addAttribute("mapUrl", mapUrl);
		return "web/BatDongSanChoGiaoDich";
	}

	@GetMapping("/cap-nhat-bat-dong-san")
	public String CapNhatBDS() {
		return "web/CapNhatThongTinBatDongSan";
	}

	@GetMapping("/bat-dong-san-cho-xac-nhan")
	public String ChoXacNhanBDS(HttpServletRequest request, ModelMap modelMap) {
		UserModel userModel = accountUtil.getUser();
		Integer user_id = userModel.getId();
		Object BDSChoGiaoDich = baiDangService.BDSChoXacNhan(user_id);
		modelMap.addAttribute("BDSChoXacNhan", BDSChoGiaoDich);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
		for (BaiDangModel baiDang : baiDangService.select()) {
			String idImgs = baiDang.getImg_id();
			if (idImgs != null && !idImgs.equals("")) {
				String idImg = idImgs.split("-")[0];
				String path = request.getContextPath();
				path += "/api/file/" + idImg;
				mapUrl.put(baiDang.getId(), path);
			} else {
				mapUrl.put(baiDang.getId(), "");
			}
		}
		modelMap.addAttribute("mapUrl", mapUrl);
		return "web/BatDongSanChoXacNhan";
	}

	@GetMapping("/bat-dong-san-da-mua-hoac-da-thue")
	public String BDSDaMuaHoacDaThue(HttpServletRequest request, ModelMap modelMap) {
		UserModel userModel = accountUtil.getUser();
		Integer user_id = userModel.getId();
		Object BDSDaMuaHoacDaThue = baiDangService.BDSDaMuaHoacDaThue(user_id);
		modelMap.addAttribute("BDSDaMuaHoacDaThue", BDSDaMuaHoacDaThue);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
		for (BaiDangModel baiDang : baiDangService.select()) {
			String idImgs = baiDang.getImg_id();
			if (idImgs != null && !idImgs.equals("")) {
				String idImg = idImgs.split("-")[0];
				String path = request.getContextPath();
				path += "/api/file/" + idImg;
				mapUrl.put(baiDang.getId(), path);
			} else {
				mapUrl.put(baiDang.getId(), "");
			}
		}
		modelMap.addAttribute("mapUrl", mapUrl);
		return "web/BatDongSanDaMuaHoacDaThue";
	}

	@GetMapping("/bat-dong-san-da-ban-hoac-da-cho-thue")
	public String BDSDaBanHoacDaChoThue(HttpServletRequest request, ModelMap modelMap) {
		UserModel userModel = accountUtil.getUser();
		Integer user_id = userModel.getId();
		Object BDSDaBanHoacDaChoThue = baiDangService.BDSDaBanHoacDaChoThue(user_id);
		modelMap.addAttribute("BDSDaBanHoacDaChoThue", BDSDaBanHoacDaChoThue);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
		for (BaiDangModel baiDang : baiDangService.select()) {
			String idImgs = baiDang.getImg_id();
			if (idImgs != null && !idImgs.equals("")) {
				String idImg = idImgs.split("-")[0];
				String path = request.getContextPath();
				path += "/api/file/" + idImg;
				mapUrl.put(baiDang.getId(), path);
			} else {
				mapUrl.put(baiDang.getId(), "");
			}
		}
		modelMap.addAttribute("mapUrl", mapUrl);
		return "web/BatDongSanDaBanHoacDaChoThue";
	}

	@GetMapping("/bat-dong-san-bi-cam")
	public String BDSBiCam(HttpServletRequest request, ModelMap modelMap) {
		UserModel userModel = accountUtil.getUser();
		Integer user_id = userModel.getId();
		Object BDSBiCam = baiDangService.BDSBiCam(user_id);
		modelMap.addAttribute("BDSBiCam", BDSBiCam);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
		for (BaiDangModel baiDang : baiDangService.select()) {
			String idImgs = baiDang.getImg_id();
			if (idImgs != null && !idImgs.equals("")) {
				String idImg = idImgs.split("-")[0];
				String path = request.getContextPath();
				path += "/api/file/" + idImg;
				mapUrl.put(baiDang.getId(), path);
			} else {
				mapUrl.put(baiDang.getId(), "");
			}
		}
		modelMap.addAttribute("mapUrl", mapUrl);
		return "web/BatDongSanBiCam";
	}

	@GetMapping("/bat-dong-san-da-xoa")
	public String BDSDaXoa(HttpServletRequest request, ModelMap modelMap) {
		UserModel userModel = accountUtil.getUser();
		Integer user_id = userModel.getId();
		Object BDSBiXoa = baiDangService.BDSBiXoa(user_id);
		modelMap.addAttribute("BDSBiXoa", BDSBiXoa);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
		for (BaiDangModel baiDang : baiDangService.select()) {
			String idImgs = baiDang.getImg_id();
			if (idImgs != null && !idImgs.equals("")) {
				String idImg = idImgs.split("-")[0];
				String path = request.getContextPath();
				path += "/api/file/" + idImg;
				mapUrl.put(baiDang.getId(), path);
			} else {
				mapUrl.put(baiDang.getId(), "");
			}
		}
		modelMap.addAttribute("mapUrl", mapUrl);
		return "web/BatDongSanDaXoa";
	}

	@GetMapping("/bat-dong-san-day-tin")
	public String BDSDayTin(HttpServletRequest request, ModelMap modelMap) {
		UserModel userModel = accountUtil.getUser();
		Integer user_id = userModel.getId();
		Object BDSDayTin = baiDangService.BDSDayTin(user_id);
		modelMap.addAttribute("BDSDayTin", BDSDayTin);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
		for (BaiDangModel baiDang : baiDangService.select()) {
			String idImgs = baiDang.getImg_id();
			if (idImgs != null && !idImgs.equals("")) {
				String idImg = idImgs.split("-")[0];
				String path = request.getContextPath();
				path += "/api/file/" + idImg;
				mapUrl.put(baiDang.getId(), path);
			} else {
				mapUrl.put(baiDang.getId(), "");
			}
		}
		modelMap.addAttribute("mapUrl", mapUrl);
		return "web/BatDongSanDayTin";
	}

	@GetMapping("/chi-tiet-bat-dong-san")
	public String ChiTietBDS(HttpServletRequest request, @RequestParam("id") Integer id, ModelMap modelMap) {
		BaiDangModel baiDangModel = baiDangService.selectOne(id);
		modelMap.addAttribute("baiDangModel", baiDangModel);
		List<String> urlImg = new ArrayList<String>();
		String idImgs = baiDangModel.getImg_id();
		if (idImgs != null && !idImgs.equals("")) {
			String[] idImg = idImgs.split("-");
			for (int i = 0; i < idImg.length; i++) {
				String path = request.getContextPath();
				path += "/api/file/" + idImg[i];
				urlImg.add(path);
			}
		}
		modelMap.addAttribute("urlImg1", urlImg.get(0));
		urlImg.remove(0);
		modelMap.addAttribute("urlImg", urlImg);
		return "admin/ChiTietBatDongSan";
	}

	@GetMapping("/sua-bat-dong-san")
	public String SuaBDS(HttpServletRequest request, @RequestParam("id") Integer id, ModelMap modelMap,
			@RequestParam(value="message", required = false) String message) {
		if(message!=null && message.equals("SBDSThatBai")) {
			modelMap.addAttribute("message", "Sửa bất động sản thấy bại!");
				
		}
		// lấy bất động sản cần sửa
				BaiDangModel baiDangModel = baiDangService.selectOne(id);
				modelMap.addAttribute("baiDangModel", baiDangModel);
		// lấy danh mục chung
		DanhMucChungModel danhMucChungByDanhMucRieng = danhMucChungService.selectOne(baiDangModel.getDanh_muc_id());
		modelMap.addAttribute("danhMucChungByDanhMucRieng", danhMucChungByDanhMucRieng);
		
		// lấy danh sách TBDS_DanhMucChung
		Object danhMucChungModel = danhMucChungService.selectAll();
		modelMap.addAttribute("danhMucChungModel", danhMucChungModel);
		// lấy danh sách Danh mục
		List<DanhMucModel> danhMucModel = danhMucService.selectDanhMucByDanhMucChungId(danhMucChungByDanhMucRieng.getId());
		modelMap.addAttribute("danhMucModel", danhMucModel);

		// lấy danh sách loại Bất động sản
		Object loaiBatDongSanModel = loaiBatDongSanService.selectAll();
		modelMap.addAttribute("loaiBatDongSanModel", loaiBatDongSanModel);
		// lấy danh sách tỉnh/ thành phố
		Object provinceModel = provinceService.selectAll();
		modelMap.addAttribute("provinceModel", provinceModel);
		// lấy danh sách Quận/ huyện
		Object districtModel = districtService.selectDistrictByProvinceId(baiDangModel.getCity_id());
		modelMap.addAttribute("districtModel", districtModel);

		// lấy danh sách Phường/Xã
		Object wardModel = wardService.selectWardbyDistrictIdAndProvinceId(baiDangModel.getHuyen_id(), baiDangModel.getCity_id());
		modelMap.addAttribute("wardModel", wardModel);

		// lấy danh sách đường
		Object streetModel = streetService.selectStreetbyDistrictIdAndProvinceId(baiDangModel.getHuyen_id(), baiDangModel.getCity_id());
		modelMap.addAttribute("streetModel", streetModel);

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
		modelMap.addAttribute("idImgs", idImgs);
		modelMap.addAttribute("urlImg", urlImg);
		

		return "web/SuaBatDongSan";
	}

	@GetMapping("/bat-dong-san-yeu-thich")
	public String BDSYeuThich(HttpServletRequest request, ModelMap modelMap) {
		UserModel userModel = accountUtil.getUser();
		Integer user_id = userModel.getId();
		Object BDSYeuThich = baiDangService.BDSYeuThichByUserId(user_id);
		modelMap.addAttribute("BDSYeuThich", BDSYeuThich);
		Map<Integer, String> mapUrl = new HashMap<Integer, String>();
		for (BaiDangModel baiDang : baiDangService.select()) {
			String idImgs = baiDang.getImg_id();
			if (idImgs != null && !idImgs.equals("")) {
				String idImg = idImgs.split("-")[0];
				String path = request.getContextPath();
				path += "/api/file/" + idImg;
				mapUrl.put(baiDang.getId(), path);
			} else {
				mapUrl.put(baiDang.getId(), "");
			}
		}
		modelMap.addAttribute("mapUrl", mapUrl);
		return "web/BatDongSanYeuThich";
	}

	@GetMapping("/dang-ky-day-tin")
	public String DangKyDayTin(HttpServletRequest request,@RequestParam("id") Integer id, ModelMap modelMap) {
		modelMap.addAttribute("id", id);
		return "web/DangKyDayTin";
	}
	@PostMapping("/dang-ky-day-tin")
	public String DangKyDayTinPost(@ModelAttribute ThongTinDayTinModel thongTinDayTinModel) {
		UserModel userModel = accountUtil.getUser();
		Integer user_id = userModel.getId();
		thongTinDayTinModel.setStatus(1);
		thongTinDayTinModel.setCreated_by(user_id);
		
		
		Integer result = thongTinDayTinService.insert(thongTinDayTinModel);
		if (result > 0) {
			baiDangService.updateActivedBDS(thongTinDayTinModel.getBai_dang_id(),1);
			return "redirect:/trang-ca-nhan/bat-dong-san-cho-giao-dich";
		}
		return "redirect:/trang-ca-nhan/bat-dong-san-cho-giao-dich";
	}
	
	@PostMapping("/cap-nhat-thong-tin")
	public String updateUserInfo(@ModelAttribute UserModel userModel) {
		Integer result = userService.update(userModel);
		if (result > 0) {
			return "redirect:/trang-ca-nhan/cap-nhat-thong-tin";
		}
		return "redirect:/trang-ca-nhan/cap-nhat-thong-tin";
	}

	// post
	@PostMapping("/tao-bat-dong-san")
	public String PostTaoBDS(@ModelAttribute BaiDangModel baiDangModel) {

		Integer result = baiDangService.insert(baiDangModel);
		if (result > 0) {
			return "redirect:/trang-ca-nhan/tao-bat-dong-san?message=TBDSThanhCong";
		}
		return "redirect:/trang-ca-nhan/tao-bat-dong-san?message=TBDSThatBai";

	}
	@PostMapping("/sua-bat-dong-san")
	public String PostSuaBDS(@ModelAttribute BaiDangModel baiDangModel) {

		Integer result = baiDangService.update(baiDangModel);
		if (result > 0) {
			return "redirect:/trang-ca-nhan/chi-tiet-bat-dong-san?id="+baiDangModel.getId();
		}
		return "redirect:/trang-ca-nhan/sua-bat-dong-san?id="+baiDangModel.getId() +"&message=SBDSThatBai";

	}
	
}