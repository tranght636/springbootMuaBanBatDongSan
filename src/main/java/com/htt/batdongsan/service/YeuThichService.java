package com.htt.batdongsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.YeuThichMapper;
import com.htt.batdongsan.model.YeuThichModel;

@Service
public class YeuThichService {
	@Autowired
    private YeuThichMapper yeuThichMapper;

	public Integer delete(Integer bai_dang_id, Integer user_id) {
		return yeuThichMapper.delete(bai_dang_id,user_id);
	}

	public List<YeuThichModel> selectByIdUser(Integer user_id) {
		return yeuThichMapper.selectByIdUser(user_id);
	}

	public Object insert(Integer bai_dang_id, Integer user_id) {
		// TODO Auto-generated method stub
		return null;
	}

   
}
