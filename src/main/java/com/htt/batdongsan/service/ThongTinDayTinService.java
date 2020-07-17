package com.htt.batdongsan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.ThongTinDayTinMapper;
import com.htt.batdongsan.model.ThongTinDayTinModel;

@Service
public class ThongTinDayTinService {
	@Autowired
	private ThongTinDayTinMapper thongTinDayTinMapper;

	public Integer insert(ThongTinDayTinModel thongTinDayTinModel) {
		
		return thongTinDayTinMapper.insert(thongTinDayTinModel);
	}

	
}
