package com.htt.batdongsan.model;

public class FileModel {
	private Integer id;
	private String name;
	private String type;
	private byte[] data;
	
	public FileModel() {
		super();
	}
	
	public FileModel(String name, String type, byte[] data) {
		super();
		this.name = name;
		this.type = type;
		this.data = data;
	}

	public FileModel(Integer id, String name, String type, byte[] data) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.data = data;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public byte[] getData() {
		return data;
	}
	public void setData(byte[] data) {
		this.data = data;
	}
}
