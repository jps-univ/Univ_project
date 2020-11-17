package com.kh.univ.stmanagement.model.vo;

public class GradeInsert {
	
	private int gradeNo;
	private int studentId;
	private int professorId;
	private String classCode;
	private String gradePoint;
	private int classSemester;
	private int classYear;
	
	public GradeInsert() {
		super();
	}

	public GradeInsert(int gradeNo, int studentId, int professorId, String classCode, String gradePoint,
			int classSemester, int classYear) {
		super();
		this.gradeNo = gradeNo;
		this.studentId = studentId;
		this.professorId = professorId;
		this.classCode = classCode;
		this.gradePoint = gradePoint;
		this.classSemester = classSemester;
		this.classYear = classYear;
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

	public int getProfessorId() {
		return professorId;
	}

	public void setProfessorId(int professorId) {
		this.professorId = professorId;
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

	public int getClassSemester() {
		return classSemester;
	}

	public void setClassSemester(int classSemester) {
		this.classSemester = classSemester;
	}

	public int getClassYear() {
		return classYear;
	}

	public void setClassYear(int classYear) {
		this.classYear = classYear;
	}

	@Override
	public String toString() {
		return "GradeInsert [gradeNo=" + gradeNo + ", studentId=" + studentId + ", professorId=" + professorId
				+ ", classCode=" + classCode + ", gradePoint=" + gradePoint + ", classSemester=" + classSemester
				+ ", classYear=" + classYear + "]";
	}
	
	
	
}
