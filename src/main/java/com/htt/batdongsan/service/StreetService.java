package com.htt.batdongsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.StreetMapper;
import com.htt.batdongsan.model.StreetModel;

@Service
public class StreetService {
	@Autowired
	private StreetMapper streetMapper;

	public StreetService(StreetMapper streetMapper) {
		this.streetMapper = streetMapper;
	}

	public List<StreetModel> selectStreetbyDistrictIdAndProvinceId(Integer _district_id, Integer _province_id) {
		return streetMapper.selectStreetbyDistrictIdAndProvinceId(_district_id, _province_id);
	}

}
