package com.kh.univ.member.model.vo;

public class Department{

	private String departmentCode;	// 학과 코드
	private String departmentName;  // 학과명
	private String collegeCode;		// 단과대학코드
	private int capacity;			// 학과 정원
	private College college;
	
	
	// 기본 생성자
	public Department() {
		super();
	}
	

	public Department(String departmentCode, String departmentName, String collegeCode, int capacity, College college) {
		super();
		this.departmentCode = departmentCode;
		this.departmentName = departmentName;
		this.collegeCode = collegeCode;
		this.capacity = capacity;
		this.college = college;
	}


	// getter / setter
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
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public College getCollege() {
		return college;
	}
	public void setCollege(College college) {
		this.college = college;
	}









	@Override
	public String toString() {
		return "Department [departmentCode=" + departmentCode + ", departmentName=" + departmentName + ", collegeCode="
				+ collegeCode + ", capacity=" + capacity + ", college=" + college + "]";
	}









	
	
	
}
