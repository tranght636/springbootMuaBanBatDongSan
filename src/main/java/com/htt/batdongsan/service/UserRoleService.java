package com.htt.batdongsan.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.UserRoleMapper;

@Service
public class UserRoleService {
	@Autowired
    private UserRoleMapper userRoleMapper;
	
//	public UserRoleService(UserRoleMapper userRoleMapper) {
//		this.userRoleMapper = userRoleMapper;
//	}

	public Integer insert(int id, int status) {
		try {
			HashMap<String, Object> map =new HashMap<String, Object>();
			map.put("user_id", id);
			map.put("role_id", status);
			return userRoleMapper.insert(map);
		} catch (Exception e) {
		}
		return -1;
		
	}


   
}
