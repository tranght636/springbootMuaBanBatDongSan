package com.htt.batdongsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.htt.batdongsan.mapper.RoleMapper;
import com.htt.batdongsan.model.RoleModel;

public class RoleService {
	@Autowired
	RoleMapper roleMapper;

	public RoleService(RoleMapper roleMapper) {
		super();
		this.roleMapper = roleMapper;
	}
	
	public List<RoleModel> selectList(Integer userId){
		return roleMapper.selectList(userId);
	}
}
