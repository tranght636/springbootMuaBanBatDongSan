package com.htt.batdongsan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.YeuThichMapper;

@Service
public class YeuThichService {
	@Autowired
    private YeuThichMapper yeuThichMapper;

	public Integer delete(Integer bai_dang_id, Integer user_id) {
		return yeuThichMapper.delete(bai_dang_id,user_id);
	}

   
}
