package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.ThongTinDayTinModel;
@Mapper
public interface ThongTinDayTinMapper {

	Integer insert(ThongTinDayTinModel thongTinDayTinModel);

	List<ThongTinDayTinModel> select();

	Integer update(Integer bai_dang_id);

	

}
