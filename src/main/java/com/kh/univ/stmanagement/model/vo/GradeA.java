package com.kh.univ.stmanagement.model.vo;

public class GradeA {

	private int gradeNo;
	private int studentId;
	private String classCode;
	private String gradePoint;
	private int classSeq;
	private String className;
	private int profId;
	
	public GradeA() {
		super();
	}

	public GradeA(int gradeNo, int studentId, String classCode, String gradePoint, int classSeq, String className,
			int profId) {
		super();
		this.gradeNo = gradeNo;
		this.studentId = studentId;
		this.classCode = classCode;
		this.gradePoint = gradePoint;
		this.classSeq = classSeq;
		this.className = className;
		this.profId = profId;
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

	public int getClassSeq() {
		return classSeq;
	}

	public void setClassSeq(int classSeq) {
		this.classSeq = classSeq;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public int getProfId() {
		return profId;
	}

	public void setProfId(int profId) {
		this.profId = profId;
	}

	@Override
	public String toString() {
		return "GradeA [gradeNo=" + gradeNo + ", studentId=" + studentId + ", classCode=" + classCode + ", gradePoint="
				+ gradePoint + ", classSeq=" + classSeq + ", className=" + className + ", profId=" + profId + "]";
	}

	
}