package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.UserService;

@RestController

public class UserApi {
	@Autowired
	UserService userService;
	
	@GetMapping("/api/user")
	public ResponseEntity<?> getUser(){
		return ResponseEntity.ok(userService.getAllUser());
	}
}
