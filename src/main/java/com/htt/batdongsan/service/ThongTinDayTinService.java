package com.htt.batdongsan.service;

import java.util.List;

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

	public List<ThongTinDayTinModel> select() {
		// TODO Auto-generated method stub
		return thongTinDayTinMapper.select();
	}

	public Integer update(Integer bai_dang_id) {
		return thongTinDayTinMapper.update(bai_dang_id);
	}

	
}
