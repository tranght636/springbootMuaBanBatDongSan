package com.htt.batdongsan.service;

import java.util.ArrayList;
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
		baiDangModel.setStatus(1);
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


	
	    
}