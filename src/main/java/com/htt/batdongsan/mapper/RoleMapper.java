package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.RoleModel;
@Mapper
public interface RoleMapper {
	public List<RoleModel> selectList(Integer userId);
}
