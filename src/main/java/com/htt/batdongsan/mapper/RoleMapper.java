package com.htt.batdongsan.mapper;

import java.util.List;

import com.htt.batdongsan.model.RoleModel;

public interface RoleMapper {
	public List<RoleModel> selectList(Integer userId);
}
