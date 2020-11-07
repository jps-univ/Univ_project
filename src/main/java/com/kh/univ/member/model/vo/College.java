package com.kh.univ.member.model.vo;

public class College {

	private String collegeCode;		// 단과대학 코드
	private String collegeName;		// 단과대학명
	
	
	public College() {
		super();
	}
	
	
	public College(String collegeCode, String collegeName) {
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


	
	
}
