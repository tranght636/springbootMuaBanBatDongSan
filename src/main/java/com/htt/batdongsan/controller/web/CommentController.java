package com.htt.batdongsan.controller.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.htt.batdongsan.model.CommentModel;
import com.htt.batdongsan.service.CommentService;

@Controller
public class CommentController {
	
	@Autowired
	CommentService commentService;
	@Autowired
	HttpSession session;

	@MessageMapping("/comment")
	@SendTo("/topic/comment")
	public String sendMes(@ModelAttribute CommentModel commentModel) throws Exception {
		if(commentService.save(commentModel)) {
			return "ok";
		}
		return "err";
	}
}
