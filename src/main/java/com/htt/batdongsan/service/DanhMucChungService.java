package com.htt.batdongsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.DanhMucChungMapper;
import com.htt.batdongsan.model.DanhMucChungModel;
@Service
public class DanhMucChungService {
	@Autowired
    private DanhMucChungMapper danhMucChungMapper;

    public DanhMucChungService(DanhMucChungMapper danhMucChungMapper) {
        this.danhMucChungMapper = danhMucChungMapper;
    }
	 public List<DanhMucChungModel> selectAll(){
	        return danhMucChungMapper.selectAll();
	  }
	public DanhMucChungService selectOne(Integer id) {
		return danhMucChungMapper.selectOne(id);
	}
	    

}
