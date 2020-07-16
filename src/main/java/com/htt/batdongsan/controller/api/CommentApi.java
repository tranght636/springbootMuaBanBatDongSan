package com.htt.batdongsan.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.htt.batdongsan.service.CommentService;

@RestController
@RequestMapping("/api")
public class CommentApi {
	@Autowired
	CommentService commentService;
	
	@GetMapping("/comment")
	public ResponseEntity<?> getCommentByBaiDangId(@RequestParam("id") Integer id){
		return ResponseEntity.ok(commentService.getCommentByBaiDangId(id));
	}
}
