package com.htt.batdongsan.service;

import java.sql.Timestamp;
import java.util.Date;
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
	
	public UserModel selectUser(Integer id) {
		return userMapper.selectUser(id);
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

	
	public List<UserModel> selectListUser(Integer status) {
		return userMapper.selectListUser(status);
	}

	public Integer updateStatusOne(String id, Integer status) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("status", status);
		return userMapper.updateStatusOne(map);
	}

	public Integer updateUser(UserModel userModel) {
		Date now = new Date();
		Timestamp timestamp = new Timestamp(now.getTime());
		userModel.setModified_date(timestamp);
		if(userModel.getPassword().equals("")) {
			return userMapper.updateUser2(userModel);
		}
		return userMapper.updateUser(userModel);
	}

	
}