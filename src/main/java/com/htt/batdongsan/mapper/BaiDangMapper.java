package com.htt.batdongsan.mapper;

import java.util.HashMap;
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

	Integer updateStatusBDS(HashMap<String, Object> map);

	Integer updateActivedBDS(HashMap<String, Object> map);

	List<BaiDangModel> BDSChoXacNhanAll();

	List<BaiDangModel> BDSBiCamAll();

	List<BaiDangModel> BDSChoGiaoDichAll();

	List<BaiDangModel> BDSYeuThichAllDesc();

	List<BaiDangModel> BDSYeuThichByUserId(Integer user_id);

	List<BaiDangModel> BDSChoGiaoDichByUserId(Integer user_id);

	Integer updateStatusBDSByUserId(HashMap<String, Object> map);
	

	
}
