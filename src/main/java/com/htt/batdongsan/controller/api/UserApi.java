package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.DanhMucChungService;
import com.htt.batdongsan.service.UserService;

@RestController

public class UserApi {
	@Autowired
	UserService userService;
	@Autowired
	DanhMucChungService danhMucChungService;
	
	@GetMapping("/api/user")
	public ResponseEntity<?> getUser(){
		return ResponseEntity.ok(userService.getAllUser());
	}
	
	@GetMapping("/api/user-by-id")
	public ResponseEntity<?> getUserById(@RequestParam("id") Integer id){
		return ResponseEntity.ok(userService.selectOne(id));
	}
	
	@GetMapping("/api/user-by-email")
	public ResponseEntity<?> getUserByEmail(@RequestParam("email") String email){
		return ResponseEntity.ok(userService.selectOne(email));
	}
	//trang test
	@GetMapping("/api/selectAllDanhMucChung")
	public ResponseEntity<?> selectAllDanhMucChung(){
	//	return ResponseEntity.ok(userService.getAllUser());
	return ResponseEntity.ok(danhMucChungService.selectAll());
	}
}
