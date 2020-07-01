package com.htt.batdongsan.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.htt.batdongsan.model.BaiDangModel;
@Mapper
public interface BaiDangMapper {

	Integer insert(BaiDangModel baiDangModel);

	List<BaiDangModel> selectAll();

	List<BaiDangModel> selectTop4All();

	List<BaiDangModel> selectTop4New();
	
	List<BaiDangModel> selectNew();

	List<BaiDangModel> selectTop4DuAn();

	List<BaiDangModel> selectDANB();
	
	BaiDangModel selectOne(Integer id);

	List<BaiDangModel> selectWhereDanhMucId(Integer dmc_id);

	List<BaiDangModel> selectWhereTPId(Integer city_id);

	List<BaiDangModel> BDSYeuThich(Integer id);

	List<BaiDangModel> BDSChoXacNhan(Integer id);

	List<BaiDangModel> BDSChoGiaoDich(Integer id);

	List<BaiDangModel> BDSDayTin(Integer id);

	List<BaiDangModel> BDSBiCam(Integer id);

	List<BaiDangModel> BDSBiXoa(Integer id);



	
}
