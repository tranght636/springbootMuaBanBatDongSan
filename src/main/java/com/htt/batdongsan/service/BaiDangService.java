package com.htt.batdongsan.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.BaiDangMapper;
import com.htt.batdongsan.model.BaiDangModel;

@Service
public class BaiDangService{
    @Autowired
    private BaiDangMapper baiDangMapper;

    public BaiDangService(BaiDangMapper baiDangMapper) {
        this.baiDangMapper = baiDangMapper;
    }

    
	public Integer insert(BaiDangModel baiDangModel) {
		baiDangModel.setStatus(0);
		baiDangModel.setActived(0);
		try {
			return baiDangMapper.insert(baiDangModel);
		} catch (Exception e) {
		}
		return -1;
		
	}

	 public List<BaiDangModel> selectAll(){
	        return baiDangMapper.selectAll();
	  }

	 public List<Object> selectTopList() {
		 List<Object> baiDangModel3 = new ArrayList<Object>();// = baiDangService.selectTop4DuAn();
			List<BaiDangModel> baiDangModelDANB = baiDangMapper.selectAll();
			List<BaiDangModel> baiDangModelSmall = new ArrayList<BaiDangModel>();
			int i=0;
	    	for (BaiDangModel baidang : baiDangModelDANB) {
	    		if(i<4) {
	    			
	    			baiDangModelSmall.add(baidang);
	    			i++;
	    		}else {
	    			baiDangModel3.add(new ArrayList<BaiDangModel>(baiDangModelSmall));
	    			//baiDangModel3.add(baiDangModelSmall);
	    			i=0;
	    			
	    			baiDangModelSmall.clear();
	    		}
	    		
			}
	    	baiDangModel3.add(baiDangModelSmall);
			return baiDangModel3;
		}

//	public List<BaiDangModel> selectTop4All() {
//		return baiDangMapper.selectTop4All();
//	}


	public List<BaiDangModel> selectTop4New() {
		return baiDangMapper.selectTop4New();
	}

	public List<BaiDangModel> selectNew(){
		return baiDangMapper.selectNew();
	}

//	public List<BaiDangModel> selectTop4DuAn() {
//		return baiDangMapper.selectTop4DuAn();
//	}
	
	public List<Object> selectDANBList() {
		List<Object> baiDangModel3 = new ArrayList<Object>();// = baiDangService.selectTop4DuAn();
		List<BaiDangModel> baiDangModelDANB = baiDangMapper.selectDANB();
		List<BaiDangModel> baiDangModelSmall = new ArrayList<BaiDangModel>();
		int i=0;
    	for (BaiDangModel baidang : baiDangModelDANB) {
    		if(i<4) {
    			
    			baiDangModelSmall.add(baidang);
    			i++;
    		}else {
    			baiDangModel3.add(new ArrayList<BaiDangModel>(baiDangModelSmall));
    			//baiDangModel3.add(baiDangModelSmall);
    			i=0;
    			
    			baiDangModelSmall.clear();
    		}
    		
		}
    	baiDangModel3.add(baiDangModelSmall);
		return baiDangModel3;
	}
	
	public List<BaiDangModel> selectDANB() {
		return baiDangMapper.selectDANB();
	}

	
	public BaiDangModel selectOne(Integer id) {
		return baiDangMapper.selectOne(id);
	}


	public List<BaiDangModel> selectWhereDanhMucId(Integer dmc_id) {
		return baiDangMapper.selectWhereDanhMucId(dmc_id);
	}


	public List<BaiDangModel> selectWhereTPId(Integer city_id) {
		return baiDangMapper.selectWhereTPId(city_id);
	}


	public List<BaiDangModel> BDSYeuThich(Integer id) {
		return baiDangMapper.BDSYeuThich(id);
	}


	public List<BaiDangModel> BDSChoXacNhan(Integer id) {
		return baiDangMapper.BDSChoXacNhan(id);
	}


	public List<BaiDangModel> BDSChoGiaoDich(Integer id) {
		return baiDangMapper.BDSChoGiaoDich(id);
	}


	public List<BaiDangModel> BDSDayTin(Integer id) {
		return baiDangMapper.BDSDayTin(id);
	}


	public List<BaiDangModel> BDSBiCam(Integer id) {
		return baiDangMapper.BDSBiCam(id);
	}


	public List<BaiDangModel> BDSBiXoa(Integer id) {
		return baiDangMapper.BDSBiXoa(id);
	}
	public Integer updateStatusBDS(Integer id, Integer status) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("status", status);
		return baiDangMapper.updateStatusBDS(map);
	}
	public Integer updateActivedBDS(Integer id, Integer actived) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("actived", actived);
		return baiDangMapper.updateActivedBDS(map);
	}


	public List<BaiDangModel> BDSChoXacNhanAll() {
		return baiDangMapper.BDSChoXacNhanAll();
	}


	public List<BaiDangModel> BDSBiCamAll() {
		return baiDangMapper.BDSBiCamAll();
	}


	public List<BaiDangModel> BDSChoGiaoDichAll() {
		return baiDangMapper.BDSChoGiaoDichAll();
	}
	public List<BaiDangModel> BDSYeuThichAllDesc() {
		return baiDangMapper.BDSYeuThichAllDesc();
	}


	public List<BaiDangModel> BDSYeuThichByUserId(Integer user_id) {
		return baiDangMapper.BDSYeuThichByUserId(user_id);
	}


	public List<BaiDangModel> BDSChoGiaoDichByUserId(Integer user_id) {
		return baiDangMapper.BDSChoGiaoDichByUserId(user_id);
	}


	public Integer updateStatusBDS(Integer user_id, Integer id, Integer status) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("user_id", user_id);
		map.put("status", status);
		return baiDangMapper.updateStatusBDSByUserId(map);
	}
	
	public List<BaiDangModel> select(){
		return baiDangMapper.select();
	}


	public List<Object> selectBaiDangTuongTu(Integer city_id) {
		List<Object> baiDangModel3 = new ArrayList<Object>();
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("city_id", city_id);
		List<BaiDangModel> baiDangModelDANB = baiDangMapper.selectBaiDangTuongTu(map);
		List<BaiDangModel> baiDangModelSmall = new ArrayList<BaiDangModel>();
		int i=0;
    	for (BaiDangModel baidang : baiDangModelDANB) {
    		if(i<4) {
    			
    			baiDangModelSmall.add(baidang);
    			i++;
    		}else {
    			baiDangModel3.add(new ArrayList<BaiDangModel>(baiDangModelSmall));
    			//baiDangModel3.add(baiDangModelSmall);
    			i=0;
    			
    			baiDangModelSmall.clear();
    		}
    		
		}
    	baiDangModel3.add(baiDangModelSmall);
		return baiDangModel3;
	}
	
	    
}