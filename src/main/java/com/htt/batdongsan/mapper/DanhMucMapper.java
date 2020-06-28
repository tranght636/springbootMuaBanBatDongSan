package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.DanhMucModel;
@Mapper
public interface DanhMucMapper {

	List<DanhMucModel> selectDanhMucByDanhMucChungId(Integer dmc_id);

	DanhMucModel selectDanhMucById(Integer dm_id);


}
