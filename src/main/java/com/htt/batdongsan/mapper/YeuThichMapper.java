package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.YeuThichModel;
@Mapper
public interface YeuThichMapper {

	Integer delete(Integer bai_dang_id, Integer user_id);

	List<YeuThichModel> selectByIdUser(Integer user_id);

	Integer insert(Integer bai_dang_id, Integer user_id);

}
