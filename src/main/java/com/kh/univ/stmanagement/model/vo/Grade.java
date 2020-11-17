package com.kh.univ.stmanagement.model.vo;

public class Grade {

	private int gradeNo;
	private int studentId;
	private int professorId;
	private String classNo;
	private String gradePoint;
	private int classSemester;
	private int classYear;
	
	public Grade() {
		super();
	}

	public Grade(int gradeNo, int studentId, int professorId, String classNo, String gradePoint, int classSemester,
			int classYear) {
		super();
		this.gradeNo = gradeNo;
		this.studentId = studentId;
		this.professorId = professorId;
		this.classNo = classNo;
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

	public String getClassNo() {
		return classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
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
		return "Grade [gradeNo=" + gradeNo + ", studentId=" + studentId + ", professorId=" + professorId + ", classNo="
				+ classNo + ", gradePoint=" + gradePoint + ", classSemester=" + classSemester + ", classYear="
				+ classYear + "]";
	}
	
	
	
}
