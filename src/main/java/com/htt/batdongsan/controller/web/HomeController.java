package com.htt.batdongsan.controller.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.htt.batdongsan.model.BaiDangModel;
import com.htt.batdongsan.model.DanhMucModel;
import com.htt.batdongsan.model.ProvinceModel;
import com.htt.batdongsan.service.BaiDangService;
import com.htt.batdongsan.service.DanhMucService;
import com.htt.batdongsan.service.ProvinceService;


@Controller(value = "HomeControllerWeb")
public class HomeController {
	@Autowired
	BaiDangService baiDangService;
	@Autowired
	DanhMucService danhMucService;
	@Autowired
	ProvinceService provinceService;
	
    @GetMapping("/")
    public String home(ModelMap modelMap){
    	Object baiDangModel = baiDangService.selectTopList();
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	
    	Object baiDangModel2 = baiDangService.selectTop4New();
    	modelMap.addAttribute("baiDangModel2", baiDangModel2);
    	List<Object> baiDangModel3 = baiDangService.selectDANBList();
    	modelMap.addAttribute("baiDangModel3", baiDangModel3);
    	modelMap.addAttribute("count", 0);
    	modelMap.addAttribute("count2", 0);
        return "web/TrangChu";
    }
    @GetMapping("/tin-rao-noi-bat")
    public String TinRaoNoiBat(ModelMap modelMap){
    	List<BaiDangModel> baiDangModel = baiDangService.selectAll();
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	modelMap.addAttribute("pagename", "Tin rao nổi bật");
        return "web/DanhSach";
    }
    @GetMapping("/tin-rao-moi-nhat")
    public String TinRaoMoiNhat(ModelMap modelMap){
    	List<BaiDangModel> baiDangModel = baiDangService.selectNew();
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	modelMap.addAttribute("pagename", "Tin rao mới nhất");
        return "web/DanhSach";
    }
    @GetMapping("/du-an-noi-bat")
    public String DuAnNoiBat(ModelMap modelMap){
    	List<BaiDangModel> baiDangModel = baiDangService.selectDANB();
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	modelMap.addAttribute("pagename", "Dự án nổi bật");
        return "web/DanhSach";
    }
    @GetMapping("/chi-tiet")
    public String ChiTiet( @RequestParam("id") Integer id, ModelMap modelMap){
    	Object baiDangModel = baiDangService.selectOne(id);
    	modelMap.addAttribute("baiDangModel", baiDangModel);
        return "web/ChiTietBatDongSan";
    }
   
    // menu
    @GetMapping("/bat-dong-san")
    public String BDS(ModelMap modelMap , @RequestParam("dmc_id") Integer dmc_id){
    	List<BaiDangModel> baiDangModel = baiDangService.selectWhereDanhMucId(dmc_id);
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	DanhMucModel pagename = danhMucService.selectDanhMucById(dmc_id);
    	modelMap.addAttribute("pagename",  pagename.getName());
        return "web/DanhSach";
    }
   
    //end menu
    
    @GetMapping("/bat-dong-san-tp")
    public String BDSTPHCM(ModelMap modelMap, @RequestParam("city_id") Integer city_id){
    	List<BaiDangModel> baiDangModel = baiDangService.selectWhereTPId(city_id);
    	modelMap.addAttribute("baiDangModel", baiDangModel);
    	ProvinceModel pagename = provinceService.selectProvinceById(city_id);
    	modelMap.addAttribute("pagename", "Bất động sản nổi bật tại "+ pagename.get_name());
        return "web/DanhSach";
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