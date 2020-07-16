package com.htt.batdongsan.controller.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.htt.batdongsan.dto.ThongTinTimKiemBaiDangDto;
import com.htt.batdongsan.model.BaiDangModel;
import com.htt.batdongsan.model.DanhMucModel;
import com.htt.batdongsan.model.ProvinceModel;
import com.htt.batdongsan.model.YeuThichModel;
import com.htt.batdongsan.service.BaiDangService;
import com.htt.batdongsan.service.DanhMucService;
import com.htt.batdongsan.service.ProvinceService;
import com.htt.batdongsan.service.YeuThichService;
import com.htt.batdongsan.utils.AccountUtil;


@Controller(value = "HomeControllerWeb")
public class HomeController {
	@Autowired
	BaiDangService baiDangService;
	@Autowired
	DanhMucService danhMucService;
	@Autowired
	ProvinceService provinceService;
	@Autowired
	YeuThichService yeuThichService;
	@Autowired
	AccountUtil accountUtil;
	@Autowired
	HttpSession session;
	
    @GetMapping("/")
    public String home(HttpServletRequest request, ModelMap modelMap){
    	Object baiDangModel = baiDangService.selectTopList();
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	
    	Object baiDangModel2 = baiDangService.selectTop4New();
    	modelMap.addAttribute("baiDangModel2", baiDangModel2);
    	List<Object> baiDangModel3 = baiDangService.selectDANBList();
    	modelMap.addAttribute("baiDangModel3", baiDangModel3);
    	modelMap.addAttribute("count", 0);
    	modelMap.addAttribute("count2", 0);
    	
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
    	
        return "web/TrangChu";
    }
    @GetMapping("/tin-rao-noi-bat")
    public String TinRaoNoiBat(HttpServletRequest request, ModelMap modelMap){
    	List<BaiDangModel> baiDangModel = baiDangService.selectAll();
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	
    	Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangModel) {
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
    	
    	modelMap.addAttribute("pagename", "Tin rao nổi bật");
        return "web/DanhSach";
    }
    @GetMapping("/tin-rao-moi-nhat")
    public String TinRaoMoiNhat(HttpServletRequest request, ModelMap modelMap){
    	List<BaiDangModel> baiDangModel = baiDangService.selectNew();
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	
    	Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangModel) {
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
    	
    	modelMap.addAttribute("pagename", "Tin rao mới nhất");
        return "web/DanhSach";
    }
    @GetMapping("/du-an-noi-bat")
    public String DuAnNoiBat(HttpServletRequest request, ModelMap modelMap){
    	List<BaiDangModel> baiDangModel = baiDangService.selectDANB();
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangModel) {
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
    	modelMap.addAttribute("pagename", "Dự án nổi bật");
        return "web/DanhSach";
    }
    @GetMapping("/chi-tiet")
    public String ChiTiet(HttpServletRequest request, @RequestParam("id") Integer id, ModelMap modelMap){
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
		modelMap.addAttribute("urlImg", urlImg);
    	
    	Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangService.select()) {
    		String idImgs2 = baiDang.getImg_id();
    		if(idImgs2 != null && !idImgs2.equals("")) {
    			String idImg2 = idImgs2.split("-")[0];
    			String path = request.getContextPath();
    			path += "/api/file/" + idImg2;
    			mapUrl.put(baiDang.getId(), path);
    		} else {
    			mapUrl.put(baiDang.getId(), "");
    		}
    	}
    	
    	Object baiDangTuongTuModel = baiDangService.selectBaiDangTuongTu(baiDangModel.getCity_id());
    	List<YeuThichModel> listyeuthich= new ArrayList<YeuThichModel>();
    	if(accountUtil.getUser()!= null)
    	{
    		listyeuthich= yeuThichService.selectByIdUser(accountUtil.getUser().getId());
    	}
    	Integer isYeuThich = 0;
    	for(YeuThichModel yt : listyeuthich) {
    		if(Integer.parseInt(yt.getBai_dang_id()) == baiDangModel.getId()) {
    			isYeuThich = 1;
    			break;
    		}
    	}
    	modelMap.addAttribute("isYeuThich", isYeuThich);
    	
    	
    	modelMap.addAttribute("mapUrl", mapUrl);
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	modelMap.addAttribute("baiDangTuongTuModel", baiDangTuongTuModel);
        return "web/ChiTietBatDongSan";
    }
   
    // menu
    @GetMapping("/bat-dong-san")
    public String BDS(HttpServletRequest request, ModelMap modelMap , @RequestParam("dmc_id") Integer dmc_id){
    	List<BaiDangModel> baiDangModel = baiDangService.selectWhereDanhMucId(dmc_id);
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	DanhMucModel pagename = danhMucService.selectDanhMucById(dmc_id);
    	modelMap.addAttribute("pagename",  pagename.getName());
    	Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangModel) {
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
        return "web/DanhSach";
    }
   
    //end menu
    
    @GetMapping("/bat-dong-san-tp")
    public String BDSTPHCM(HttpServletRequest request, ModelMap modelMap, @RequestParam("city_id") Integer city_id){
    	List<BaiDangModel> baiDangModel = baiDangService.selectWhereTPId(city_id);
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	ProvinceModel pagename = provinceService.selectProvinceById(city_id);
    	modelMap.addAttribute("pagename", "Bất động sản nổi bật tại "+ pagename.get_name());
    	
    	Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangModel) {
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
        return "web/DanhSach";
    }
    
    @GetMapping("/tim-kiem")
    public String timKiem(HttpServletRequest request, @ModelAttribute ThongTinTimKiemBaiDangDto thongTin, ModelMap modelMap){
    	List<BaiDangModel> baiDangs = baiDangService.search(thongTin);
    	
    	modelMap.addAttribute("baiDangModel", baiDangs);
    	
    	Map<Integer, String> mapUrl = new HashMap<Integer, String>();
    	for(BaiDangModel baiDang : baiDangs) {
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
    	
    	modelMap.addAttribute("pagename", "Kết quả tìm kiếm");
        return "web/DanhSach";
    }
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    @GetMapping("/danh-sach")
    public String DanhSach(){
        return "web/DanhSach";
    }

    @PostMapping("/")
    public String home1(){
        return "web/TrangChu";
    }
    
}