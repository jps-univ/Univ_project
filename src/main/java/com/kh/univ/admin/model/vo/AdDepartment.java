package com.kh.univ.admin.model.vo;

public class AdDepartment {
	private String departmentCode;
	private String departmentName;
	private String collegeCode;
	
	
	
	public AdDepartment() {
		super();
	}



	public AdDepartment(String departmentCode, String departmentName, String collegeCode) {
		super();
		this.departmentCode = departmentCode;
		this.departmentName = departmentName;
		this.collegeCode = collegeCode;
	}



	public String getDepartmentCode() {
		return departmentCode;
	}



	public void setDepartmentCode(String departmentCode) {
		this.departmentCode = departmentCode;
	}



	public String getDepartmentName() {
		return departmentName;
	}



	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}



	public String getCollegeCode() {
		return collegeCode;
	}



	public void setCollegeCode(String collegeCode) {
		this.collegeCode = collegeCode;
	}



	@Override
	public String toString() {
		return "AdDepartment [departmentCode=" + departmentCode + ", departmentName=" + departmentName
				+ ", collegeCode=" + collegeCode + "]";
	}
	
	
}
