package com.htt.batdongsan.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.UserMapper;
import com.htt.batdongsan.model.UserModel;

@Service
public class UserService{
    @Autowired
    private UserMapper userMapper;

    public UserService(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public List<UserModel> getAllUser(){
        return userMapper.getAllUser();
    }
    
    public UserModel selectOne(Integer id) {
    	return userMapper.selectOne(id, 1);
    }

	public UserModel selectOne(String email) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("email", email);
		map.put("status", 1);
		return userMapper.selectOneByEmail(map);
	}

	public Integer update(UserModel userModel) {
		return userMapper.update(userModel);
	}

	public Integer insert(UserModel userModel) {
		try {
			return userMapper.insert(userModel);
		} catch (Exception e) {
		}
		return -1;
		
	}
}