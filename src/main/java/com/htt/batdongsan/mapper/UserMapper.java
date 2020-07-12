package com.htt.batdongsan.mapper;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.UserModel;

@Mapper
public interface UserMapper {
	List<UserModel> getAllUser();
	UserModel selectOne(Integer id, Integer status);
	UserModel selectOneByEmail(HashMap<String, Object> map);
	Integer update(UserModel userModel);
	Integer insert(UserModel userModel);
	public List<UserModel> selectListUser(Integer status);
	Integer updateStatusOne(HashMap<String, Object> map);
	UserModel selectUser(Integer id);
	Integer updateUser(UserModel userModel);
	Integer updateUser2(UserModel userModel);
	
}
