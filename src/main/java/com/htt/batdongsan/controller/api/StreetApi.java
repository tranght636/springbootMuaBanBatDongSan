package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.StreetService;

@RestController
@RequestMapping("/api")
public class StreetApi {
	
	@Autowired
	StreetService streetService;
	
	@GetMapping("/get-duong-by-huyenid-cityid")
	public ResponseEntity<?> getDuongByHuyenIdAndCityId(@RequestParam("_district_id") Integer _district_id, @RequestParam("_province_id") Integer _province_id){
		return ResponseEntity.ok(streetService.selectStreetbyDistrictIdAndProvinceId(_district_id, _province_id));
	}

}
