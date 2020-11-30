package com.kh.univ.grade.model.vo;

public class StudentGrade {
	private int stdId;
	private int classYear;
	private String className;
	private String gradePoint;
	private int gradeSize;
	private String classType;
	public StudentGrade() {	}
	public StudentGrade(int stdId, int classYear, String className, String gradePoint, int gradeSize,
			String classType) {
		super();
		this.stdId = stdId;
		this.classYear = classYear;
		this.className = className;
		this.gradePoint = gradePoint;
		this.gradeSize = gradeSize;
		this.classType = classType;
	}
	public int getStdId() {
		return stdId;
	}
	public void setStdId(int stdId) {
		this.stdId = stdId;
	}
	public int getClassYear() {
		return classYear;
	}
	public void setClassYear(int classYear) {
		this.classYear = classYear;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getGradePoint() {
		return gradePoint;
	}
	public void setGradePoint(String gradePoint) {
		this.gradePoint = gradePoint;
	}
	public int getGradeSize() {
		return gradeSize;
	}
	public void setGradeSize(int gradeSize) {
		this.gradeSize = gradeSize;
	}
	public String getClassType() {
		return classType;
	}
	public void setClassType(String classType) {
		this.classType = classType;
	}
	@Override
	public String toString() {
		return "StudentGrade [stdId=" + stdId + ", classYear=" + classYear + ", className=" + className
				+ ", gradePoint=" + gradePoint + ", gradeSize=" + gradeSize + ", classType=" + classType + "]";
	}
	
	
	
	
}
