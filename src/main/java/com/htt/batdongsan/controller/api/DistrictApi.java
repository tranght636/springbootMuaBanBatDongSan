package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.DistrictService;

@RestController
@RequestMapping("/api")
public class DistrictApi {
	
	@Autowired
	DistrictService districtService;
	
	@GetMapping("/get-quan-huyen-by-cityid")
	public ResponseEntity<?> getQuanHuyenByCityId(@RequestParam("_province_id") Integer _province_id){
		return ResponseEntity.ok(districtService.selectDistrictByProvinceId(_province_id));
	}

}
