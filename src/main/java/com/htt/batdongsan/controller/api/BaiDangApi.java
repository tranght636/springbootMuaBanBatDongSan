package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.BaiDangService;

@RestController
@RequestMapping("/api")
public class BaiDangApi {
	@Autowired
	BaiDangService baiDangService;
	
	@PutMapping("/xac-nhan-bds")
	public ResponseEntity<?> XacNhanBDS(@RequestParam("id") Integer id){
		return ResponseEntity.ok(baiDangService.updateStatusBDS(id,1));
	}
	
	@PutMapping("/day-bds")
	public ResponseEntity<?> DayBDS(@RequestParam("id") Integer id){
		return ResponseEntity.ok(baiDangService.updateActivedBDS(id,2));
	}
	
	@PutMapping("/khoi-phuc-bds")
	public ResponseEntity<?> KhoiPhucBDS(@RequestParam("id") Integer id){
		return ResponseEntity.ok(baiDangService.updateStatusBDS(id,1));
	}
	
	@PutMapping("/cam-bds")
	public ResponseEntity<?> CamBDS(@RequestParam("id") Integer id){
		return ResponseEntity.ok(baiDangService.updateStatusBDS(id,-2));
	}
	
	@PutMapping("/xoa-bds-by-user")
	public ResponseEntity<?> XoaBDSByUser(@RequestParam("id") Integer id){
		Integer user_id = 1;
		return ResponseEntity.ok(baiDangService.updateStatusBDS(user_id,id,-1));
	}
	
	
	
}
