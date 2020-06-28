package com.htt.batdongsan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.htt.batdongsan.mapper.DanhMucMapper;
import com.htt.batdongsan.model.DanhMucModel;

@Service
public class DanhMucService {
	@Autowired
    private DanhMucMapper danhMucMapper;

    public DanhMucService(DanhMucMapper danhMucMapper) {
        this.danhMucMapper = danhMucMapper;
    }
	 public List<DanhMucModel> selectDanhMucByDanhMucChungId(Integer dmc_id){
	        return danhMucMapper.selectDanhMucByDanhMucChungId(dmc_id);
	  }
	public DanhMucModel selectDanhMucById(Integer dm_id) {
		return danhMucMapper.selectDanhMucById(dm_id);
	}

}
