package com.kh.univ.admin.model.vo;

public class AdCollege {

	
	private String collegeCode;
	private String collegeName;
	
	
	public AdCollege() {
		super();
	}


	public AdCollege(String collegeCode, String collegeName) {
		super();
		this.collegeCode = collegeCode;
		this.collegeName = collegeName;
	}


	public String getCollegeCode() {
		return collegeCode;
	}


	public void setCollegeCode(String collegeCode) {
		this.collegeCode = collegeCode;
	}


	public String getCollegeName() {
		return collegeName;
	}


	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}


	@Override
	public String toString() {
		return "AdCollege [collegeCode=" + collegeCode + ", collegeName=" + collegeName + "]";
	}
	
	
	
}
