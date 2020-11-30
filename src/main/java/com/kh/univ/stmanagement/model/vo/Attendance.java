package com.kh.univ.stmanagement.model.vo;

public class Attendance {
	
	private String className;
	private int stdId;
	private String classId;
	private int classSeq;
	private int attNo;
	private String attStatus;
	private int profId;
	
	public Attendance() {
		super();
	}

	public Attendance(String className, int stdId, String classId, int classSeq, int attNo, String attStatus,
			int profId) {
		super();
		this.className = className;
		this.stdId = stdId;
		this.classId = classId;
		this.classSeq = classSeq;
		this.attNo = attNo;
		this.attStatus = attStatus;
		this.profId = profId;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
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

	public int getClassSeq() {
		return classSeq;
	}

	public void setClassSeq(int classSeq) {
		this.classSeq = classSeq;
	}

	public int getAttNo() {
		return attNo;
	}

	public void setAttNo(int attNo) {
		this.attNo = attNo;
	}

	public String getAttStatus() {
		return attStatus;
	}

	public void setAttStatus(String attStatus) {
		this.attStatus = attStatus;
	}

	public int getProfId() {
		return profId;
	}

	public void setProfId(int profId) {
		this.profId = profId;
	}

	@Override
	public String toString() {
		return "Attendance [className=" + className + ", stdId=" + stdId + ", classId=" + classId + ", classSeq="
				+ classSeq + ", attNo=" + attNo + ", attStatus=" + attStatus + ", profId=" + profId + "]";
	}

	
}
