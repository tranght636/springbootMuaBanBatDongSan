package com.htt.batdongsan.model;

import java.sql.Timestamp;

public class ThongTinDayTinModel {
	private Integer id;
	private Integer bai_dang_id;
	private String loai_the;
	private Long seri;
	private Long ma_cao;
	private Integer status;
	private Timestamp created_date;
	private Timestamp modified_date;
	private Integer created_by;
	private Integer modified_by;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getBai_dang_id() {
		return bai_dang_id;
	}
	public void setBai_dang_id(Integer bai_dang_id) {
		this.bai_dang_id = bai_dang_id;
	}
	public String getLoai_the() {
		return loai_the;
	}
	public void setLoai_the(String loai_the) {
		this.loai_the = loai_the;
	}
	public Long getSeri() {
		return seri;
	}
	public void setSeri(Long seri) {
		this.seri = seri;
	}
	public Long getMa_cao() {
		return ma_cao;
	}
	public void setMa_cao(Long ma_cao) {
		this.ma_cao = ma_cao;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Timestamp getCreated_date() {
		return created_date;
	}
	public void setCreated_date(Timestamp created_date) {
		this.created_date = created_date;
	}
	public Timestamp getModified_date() {
		return modified_date;
	}
	public void setModified_date(Timestamp modified_date) {
		this.modified_date = modified_date;
	}
	public Integer getCreated_by() {
		return created_by;
	}
	public void setCreated_by(Integer created_by) {
		this.created_by = created_by;
	}
	public Integer getModified_by() {
		return modified_by;
	}
	public void setModified_by(Integer modified_by) {
		this.modified_by = modified_by;
	}
	
	
}

