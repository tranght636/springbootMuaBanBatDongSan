package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.WardModel;
@Mapper
public interface WardMapper {

	List<WardModel> selectWardbyDistrictIdAndProvinceId(Integer _district_id,Integer _province_id);


}
