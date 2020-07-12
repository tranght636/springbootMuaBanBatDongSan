package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.DanhMucChungModel;
@Mapper
public interface DanhMucChungMapper {

	List<DanhMucChungModel> selectAll();

	DanhMucChungModel selectOne(Integer id);

}
