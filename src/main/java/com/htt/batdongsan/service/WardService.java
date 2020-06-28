package com.htt.batdongsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.WardMapper;
import com.htt.batdongsan.model.WardModel;

@Service
public class WardService {
	@Autowired
	private WardMapper wardMapper;

	public WardService(WardMapper wardMapper) {
		this.wardMapper = wardMapper;
	}

	public List<WardModel> selectWardbyDistrictIdAndProvinceId(Integer _district_id, Integer _province_id) {
		return wardMapper.selectWardbyDistrictIdAndProvinceId(_district_id, _province_id);
	}

}
