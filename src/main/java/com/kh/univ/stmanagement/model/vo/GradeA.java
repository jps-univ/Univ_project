package com.kh.univ.stmanagement.model.vo;

public class GradeA {

	private int gradeNo;
	private int studentId;
	private String classCode;
	private String gradePoint;
	
	public GradeA() {
		super();
	}

	public GradeA(int gradeNo, int studentId, String classCode, String gradePoint) {
		super();
		this.gradeNo = gradeNo;
		this.studentId = studentId;
		this.classCode = classCode;
		this.gradePoint = gradePoint;
	}

	public int getGradeNo() {
		return gradeNo;
	}

	public void setGradeNo(int gradeNo) {
		this.gradeNo = gradeNo;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getClassCode() {
		return classCode;
	}

	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}

	public String getGradePoint() {
		return gradePoint;
	}

	public void setGradePoint(String gradePoint) {
		this.gradePoint = gradePoint;
	}

	@Override
	public String toString() {
		return "Grade [gradeNo=" + gradeNo + ", studentId=" + studentId + ", classCode=" + classCode + ", gradePoint="
				+ gradePoint + "]";
	}

	
}