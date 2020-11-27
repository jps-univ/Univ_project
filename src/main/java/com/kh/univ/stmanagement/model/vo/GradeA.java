package com.kh.univ.stmanagement.model.vo;

public class GradeA {

	private int gradeNo;		// 성적테이블 번호
	private int stdId;			// 학번
	private String classId;		// 수업코드
	private String gradePoint;	// 성적
	private int classSeq;		// 성적 시퀀스
	private String className;	// 수업이름
	private int profId;			// 교수아이디
	
	public GradeA() {
		super();
	}

	public GradeA(int gradeNo, int stdId, String classId, String gradePoint, int classSeq, String className,
			int profId) {
		super();
		this.gradeNo = gradeNo;
		this.stdId = stdId;
		this.classId = classId;
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

	public int getStdId() {
		return stdId;
	}

	public void setStdId(int stdId) {
		this.stdId = stdId;
	}

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
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
		return "GradeA [gradeNo=" + gradeNo + ", stdId=" + stdId + ", classId=" + classId + ", gradePoint=" + gradePoint
				+ ", classSeq=" + classSeq + ", className=" + className + ", profId=" + profId + "]";
	}

	
}