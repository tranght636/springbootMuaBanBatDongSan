package com.htt.batdongsan.controller.api;

import java.io.BufferedReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.htt.batdongsan.model.UserModel;
import com.htt.batdongsan.service.UserService;
import com.htt.batdongsan.utils.EncodedPasswordUtil;

@RestController
@RequestMapping("/api")
public class UserApi {
	@Autowired
	UserService userService;
	@GetMapping("/user")
	public ResponseEntity<?> getUser(){
		return ResponseEntity.ok(userService.getAllUser());
	}
	
	@GetMapping("/user-by-id")
	public ResponseEntity<?> getUserById(@RequestParam("id") Integer id){
		return ResponseEntity.ok(userService.selectOne(id));
	}
	
	@GetMapping("/user-by-email")
	public ResponseEntity<?> getUserByEmail(@RequestParam("email") String email){
		return ResponseEntity.ok(userService.selectOne(email));
	}
	
	@PutMapping("/delete-user")
	public ResponseEntity<?> setUserStatusDelete(@RequestParam("id") String id){
		//return ResponseEntity.ok(userService.updateStatusOne(id,-1));
		Object abc= userService.updateStatusOne(id,-1);
		return ResponseEntity.ok(abc);
	}
	
	@PutMapping("/khoi-phuc-user")
	public ResponseEntity<?> setUserStatusKhoiPhuc(@RequestParam("id") String id){
		return ResponseEntity.ok(userService.updateStatusOne(id,1));
	}
	
	@PutMapping("/update-user")
	public ResponseEntity<?> updateUser(HttpServletRequest req, HttpServletResponse res  )throws ServletException, IOException {
		try {
		StringBuilder sb = new StringBuilder();
		BufferedReader reader = req.getReader();
		String line;
	    while ((line = reader.readLine()) != null) {
	        sb.append(line);
	    }
	    UserModel userModel = new ObjectMapper().readValue(sb.toString(), UserModel.class);
	    userModel.setPassword(EncodedPasswordUtil.encode(userModel.getPassword()));
	    return ResponseEntity.ok(userService.updateUser(userModel));
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return ResponseEntity.ok(-1);
	}
	
	
	
	
}
