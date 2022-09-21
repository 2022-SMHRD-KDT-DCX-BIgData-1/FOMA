package com.saeyan.dto;

public class imageVO {

	String name,title,fileName,uploadFilePath;

	public imageVO(String name, String title, String fileName, String uploadFilePath) {
		super();
		this.name = name;
		this.title = title;
		this.fileName = fileName;
		this.uploadFilePath = uploadFilePath;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getUploadFilePath() {
		return uploadFilePath;
	}

	public void setUploadFilePath(String uploadFilePath) {
		this.uploadFilePath = uploadFilePath;
	}

	public imageVO() {
		super();
	}
	
	
}
