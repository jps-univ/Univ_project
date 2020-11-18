package com.kh.univ.grade.model.vo;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.member.model.vo.Professor;


public class Grade {
	private int gradeNo;
	private int stdId;
	private int profId;
	
	private String classNo;
	private int classSemester;
	private int classYear;
	public Grade() {}
	public Grade(int gradeNo, int stdId, int profId, String classNo, int classSemester, int classYear) {
		super();
		this.gradeNo = gradeNo;
		this.stdId = stdId;
		this.profId = profId;
		this.classNo = classNo;
		this.classSemester = classSemester;
		this.classYear = classYear;
	}
	public int getGradeNo() {
		return gradeNo;
	}
	public void setGradeNo(int gradeNo) {
		this.gradeNo = gradeNo;
	}
	public int getStdId() {
		return stdId;
	}
	public void setStdId(int stdId) {
		this.stdId = stdId;
	}
	public int getProfId() {
		return profId;
	}
	public void setProfId(int profId) {
		this.profId = profId;
	}
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
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
		return "Grade [gradeNo=" + gradeNo + ", stdId=" + stdId + ", profId=" + profId + ", classNo=" + classNo
				+ ", classSemester=" + classSemester + ", classYear=" + classYear + "]";
	}
	
	
	
	
}
