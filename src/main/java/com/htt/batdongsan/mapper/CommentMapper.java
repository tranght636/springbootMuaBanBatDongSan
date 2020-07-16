package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.dto.CommentDto;
import com.htt.batdongsan.model.CommentModel;

@Mapper
public interface CommentMapper {

	public List<CommentDto> getCommentByBaiDangId(Integer id);

	public void save(CommentModel commentModel); 
	
}
