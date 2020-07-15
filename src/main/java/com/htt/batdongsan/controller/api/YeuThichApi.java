package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.YeuThichService;
import com.htt.batdongsan.utils.AccountUtil;

@RestController
@RequestMapping("/api")
public class YeuThichApi {
	@Autowired
	YeuThichService yeuThichService;

	@Autowired
	AccountUtil accountUtil;

	@PutMapping("/thich-bds")
	public ResponseEntity<?> thichBDS(@RequestParam("id") Integer bai_dang_id) {
		Integer user_id = accountUtil.getUser().getId();
		return ResponseEntity.ok(yeuThichService.insert(bai_dang_id, user_id));
	}

	@PutMapping("/bo-thich-bds")
	public ResponseEntity<?> boThichBDS(@RequestParam("id") Integer bai_dang_id) {
		Integer user_id = accountUtil.getUser().getId();
		return ResponseEntity.ok(yeuThichService.delete(bai_dang_id, user_id));
	}
}