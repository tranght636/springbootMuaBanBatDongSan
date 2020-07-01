package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.UserService;

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
	
	@PostMapping("/delete-user")
	public ResponseEntity<?> setUserStatusDelete(@RequestParam("id") String id){
		//return ResponseEntity.ok(userService.updateStatusOne(id,-1));
		Object abc= userService.updateStatusOne(id,-1);
		return ResponseEntity.ok(abc);
	}
	
	@PostMapping("/khoi-phuc-user")
	public ResponseEntity<?> setUserStatusKhoiPhuc(@RequestParam("id") String id){
		return ResponseEntity.ok(userService.updateStatusOne(id,1));
	}
	
	
	
}
