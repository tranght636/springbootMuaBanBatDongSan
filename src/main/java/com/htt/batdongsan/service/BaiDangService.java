package com.htt.batdongsan.service;

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


	public List<BaiDangModel> selectTop4All() {
		return baiDangMapper.selectTop4All();
	}


	public List<BaiDangModel> selectTop4New() {
		return baiDangMapper.selectTop4New();
	}


	public List<BaiDangModel> selectTop4DuAn() {
		return baiDangMapper.selectTop4DuAn();
	}


	public BaiDangModel selectOne(Integer id) {
		return baiDangMapper.selectOne(id);
	}

	    
}