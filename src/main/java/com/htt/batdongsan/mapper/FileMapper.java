package com.htt.batdongsan.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.FileModel;

@Mapper
public interface FileMapper {
	public void insert(FileModel fileModel);
	public FileModel selectOne(Integer id);
}
