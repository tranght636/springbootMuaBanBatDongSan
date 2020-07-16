package com.htt.batdongsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.dto.CommentDto;
import com.htt.batdongsan.mapper.CommentMapper;
import com.htt.batdongsan.model.CommentModel;

@Service
public class CommentService {
	@Autowired
	CommentMapper commentMapper;

	public List<CommentDto> getCommentByBaiDangId(Integer id) {
		return commentMapper.getCommentByBaiDangId(id);
	}

	public boolean save(CommentModel commentModel) {
		if(commentModel == null) {
			return false;
		}
		commentMapper.save(commentModel);
		return true;
	}
	
}
