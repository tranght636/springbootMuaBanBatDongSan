package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.FileService;

@RestController
@RequestMapping("/api")
public class FilesApi {
	@Autowired
	FileService fileService;
	@PutMapping("/xoa-img")
	public ResponseEntity<?> XacNhanBDS(@RequestParam("id") Integer id){
		return ResponseEntity.ok(fileService.delete(id));
	}
	
}
