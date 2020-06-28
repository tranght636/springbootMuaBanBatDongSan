package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.WardService;

@RestController
@RequestMapping("/api")
public class WardApi {
	
	@Autowired
	WardService wardService;
	
	@GetMapping("/get-phuong-xa-by-huyenid-cityid")
	public ResponseEntity<?> getPhuongXaByHuyenIdAndCityId(@RequestParam("_district_id") Integer _district_id, @RequestParam("_province_id") Integer _province_id){
		return ResponseEntity.ok(wardService.selectWardbyDistrictIdAndProvinceId(_district_id, _province_id));
	}
}
