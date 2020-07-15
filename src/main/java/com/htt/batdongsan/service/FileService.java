package com.htt.batdongsan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.FileMapper;
import com.htt.batdongsan.model.FileModel;

@Service
public class FileService {
	@Autowired
	FileMapper fileMapper;

	public FileService(FileMapper fileMapper) {
		super();
		this.fileMapper = fileMapper;
	}
	
	public Integer insert(FileModel fileModel) {
		fileMapper.insert(fileModel);
		return fileModel.getId();
	}
	
	public FileModel selectOne(Integer id) {
		return fileMapper.selectOne(id);
	}

	public Integer delete(Integer id) {
		return fileMapper.delete(id);
	}
}
