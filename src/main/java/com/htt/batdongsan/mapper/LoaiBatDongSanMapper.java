package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.LoaiBatDongSanModel;
@Mapper
public interface LoaiBatDongSanMapper {

	List<LoaiBatDongSanModel> selectAll();

}
