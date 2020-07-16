package com.htt.batdongsan.dto;

import com.htt.batdongsan.model.CommentModel;

public class CommentDto extends CommentModel{
	
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
 }
