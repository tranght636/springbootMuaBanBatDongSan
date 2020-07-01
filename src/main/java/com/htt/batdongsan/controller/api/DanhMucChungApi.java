package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.DanhMucChungService;

@RestController
@RequestMapping("/api")
public class DanhMucChungApi {
	@Autowired
	DanhMucChungService danhMucChungService;
	
	//trang test
	@GetMapping("/selectAllDanhMucChung")
	public ResponseEntity<?> selectAllDanhMucChung(){
	//	return ResponseEntity.ok(userService.getAllUser());
	return ResponseEntity.ok(danhMucChungService.selectAll());
	}

}
