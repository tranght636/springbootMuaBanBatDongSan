package com.htt.batdongsan.model;

import java.sql.Date;
import java.sql.Timestamp;

public class UserModel {
	private int id;
	private String email;
	private String username;
	private String password;
	
	private String phone_number;
	private String address;
	private Date dob;
	
	private Integer roleId;
	private Integer status;
	private Timestamp created_date;
	private Timestamp modified_date;
	private Integer created_by;
	private Integer modified_by;
	private Timestamp deactived_at;

	private String token_reset_password;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
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
	public Timestamp getDeactived_at() {
		return deactived_at;
	}
	public void setDeactived_at(Timestamp deactived_at) {
		this.deactived_at = deactived_at;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public UserModel(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public UserModel() {
		super();
	}

	public String getToken_reset_password() {
		return token_reset_password;
	}

	public void setToken_reset_password(String token_reset_password) {
		this.token_reset_password = token_reset_password;
	}
}
