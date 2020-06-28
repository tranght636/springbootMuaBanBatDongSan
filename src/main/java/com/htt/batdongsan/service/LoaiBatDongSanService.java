package com.htt.batdongsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.LoaiBatDongSanMapper;
import com.htt.batdongsan.model.LoaiBatDongSanModel;

@Service
public class LoaiBatDongSanService {
	@Autowired
	private LoaiBatDongSanMapper loaiBatDongSanMapper;

	public LoaiBatDongSanService(LoaiBatDongSanMapper loaiBatDongSanMapper) {
		this.loaiBatDongSanMapper = loaiBatDongSanMapper;
	}

	public List<LoaiBatDongSanModel> selectAll() {
		return loaiBatDongSanMapper.selectAll();
	}

}
