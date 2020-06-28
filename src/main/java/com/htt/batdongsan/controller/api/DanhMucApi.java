package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.DanhMucService;

@RestController
@RequestMapping("/api")
public class DanhMucApi {
	
	@Autowired
	DanhMucService danhMucService;
	
	@GetMapping("/get-danh-muc-by-dmcid")
	public ResponseEntity<?> getDanhMucByDMCId(@RequestParam("dmc_id") Integer dmc_id){
		return ResponseEntity.ok(danhMucService.selectDanhMucByDanhMucChungId(dmc_id));
	}
}
