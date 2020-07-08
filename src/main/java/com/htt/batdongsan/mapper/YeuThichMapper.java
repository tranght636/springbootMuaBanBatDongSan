package com.htt.batdongsan.mapper;

import org.apache.ibatis.annotations.Mapper;
@Mapper
public interface YeuThichMapper {

	Integer delete(Integer bai_dang_id, Integer user_id);


}
