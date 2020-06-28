package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.ProvinceModel;
@Mapper
public interface ProvinceMapper {

	List<ProvinceModel> selectAll();

}
