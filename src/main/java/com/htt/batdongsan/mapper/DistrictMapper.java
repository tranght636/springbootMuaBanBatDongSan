package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.DistrictModel;
@Mapper
public interface DistrictMapper {

	List<DistrictModel> selectDistrictByProvinceId(Integer _province_id);


}
