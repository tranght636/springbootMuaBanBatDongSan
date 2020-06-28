package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.StreetModel;
@Mapper
public interface StreetMapper {

	List<StreetModel> selectStreetbyDistrictIdAndProvinceId(Integer _district_id,Integer _province_id);


}
