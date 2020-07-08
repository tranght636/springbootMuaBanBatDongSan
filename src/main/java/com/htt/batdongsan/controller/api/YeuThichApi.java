package com.htt.batdongsan.controller.api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.YeuThichService;
@RestController
@RequestMapping("/api")
public class YeuThichApi {
	@Autowired
	YeuThichService yeuThichService;
	
	@PutMapping("/bo-thich-bds")
	public ResponseEntity<?> CamBDS(@RequestParam("id") Integer bai_dang_id){
		Integer user_id=1;
		return ResponseEntity.ok(yeuThichService.delete(bai_dang_id,user_id));
	}
}