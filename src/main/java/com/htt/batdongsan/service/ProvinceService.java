package com.htt.batdongsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.ProvinceMapper;
import com.htt.batdongsan.model.ProvinceModel;

@Service
public class ProvinceService {
	@Autowired
    private ProvinceMapper provinceMapper;

    public ProvinceService(ProvinceMapper provinceMapper) {
        this.provinceMapper = provinceMapper;
    }
	 public List<ProvinceModel> selectAll(){
	        return provinceMapper.selectAll();
	  }
	    
}
