package com.htt.batdongsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.DistrictMapper;
import com.htt.batdongsan.model.DistrictModel;

@Service
public class DistrictService {
	@Autowired
    private DistrictMapper districtMapper;

    public DistrictService(DistrictMapper districtMapper) {
        this.districtMapper = districtMapper;
    }
	 public List<DistrictModel> selectDistrictByProvinceId(Integer _province_id){
	        return districtMapper.selectDistrictByProvinceId(_province_id);
	  }

}
