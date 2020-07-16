package com.htt.batdongsan.model;

import java.sql.Timestamp;

public class CommentModel {
	private Integer id;
	private Integer bai_dang_id;
	private String content;
	private String tra_loi_comment_id;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTra_loi_comment_id() {
		return tra_loi_comment_id;
	}
	public void setTra_loi_comment_id(String tra_loi_comment_id) {
		this.tra_loi_comment_id = tra_loi_comment_id;
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
