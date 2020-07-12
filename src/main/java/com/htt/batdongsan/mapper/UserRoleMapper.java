package com.htt.batdongsan.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
@Mapper
public interface UserRoleMapper {

	Integer insert(HashMap<String, Object> map);


}
