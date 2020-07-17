package com.htt.batdongsan.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.ThongTinDayTinModel;
@Mapper
public interface ThongTinDayTinMapper {

	Integer insert(ThongTinDayTinModel thongTinDayTinModel);

	

}
