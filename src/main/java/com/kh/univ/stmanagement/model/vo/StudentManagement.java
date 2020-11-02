package com.kh.univ.stmanagement.model.vo;

public class StudentManagement {
	private String className;		// 교과목명
	private String classId;			// 강의번호
	private String classType;		// 이수구분
	private int classTime;			// 강의시간
	private String stdName; 		// 학생명
	private int stdId; 				// 학번
	private String stdDepartment;	// 전공
	private String stdSemester; 	// 학년
	private String stdTel;    		// 연락처
	private String stdEmail;  		// 이메일
	private String roomNo;			// 강의장
	
	public StudentManagement() {
		super();
	}

	public StudentManagement(String className, String classId, String classType, int classTime, String stdName,
			int stdId, String stdDepartment, String stdSemester, String stdTel, String stdEmail, String roomNo) {
		super();
		this.className = className;
		this.classId = classId;
		this.classType = classType;
		this.classTime = classTime;
		this.stdName = stdName;
		this.stdId = stdId;
		this.stdDepartment = stdDepartment;
		this.stdSemester = stdSemester;
		this.stdTel = stdTel;
		this.stdEmail = stdEmail;
		this.roomNo = roomNo;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public String getClassType() {
		return classType;
	}

	public void setClassType(String classType) {
		this.classType = classType;
	}

	public int getClassTime() {
		return classTime;
	}

	public void setClassTime(int classTime) {
		this.classTime = classTime;
	}

	public String getStdName() {
		return stdName;
	}

	public void setStdName(String stdName) {
		this.stdName = stdName;
	}

	public int getStdId() {
		return stdId;
	}

	public void setStdId(int stdId) {
		this.stdId = stdId;
	}

	public String getStdDepartment() {
		return stdDepartment;
	}

	public void setStdDepartment(String stdDepartment) {
		this.stdDepartment = stdDepartment;
	}

	public String getStdSemester() {
		return stdSemester;
	}

	public void setStdSemester(String stdSemester) {
		this.stdSemester = stdSemester;
	}

	public String getStdTel() {
		return stdTel;
	}

	public void setStdTel(String stdTel) {
		this.stdTel = stdTel;
	}

	public String getStdEmail() {
		return stdEmail;
	}

	public void setStdEmail(String stdEmail) {
		this.stdEmail = stdEmail;
	}

	public String getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}

	@Override
	public String toString() {
		return "StudentManagement [className=" + className + ", classId=" + classId + ", classType=" + classType
				+ ", classTime=" + classTime + ", stdName=" + stdName + ", stdId=" + stdId + ", stdDepartment="
				+ stdDepartment + ", stdSemester=" + stdSemester + ", stdTel=" + stdTel + ", stdEmail=" + stdEmail
				+ ", roomNo=" + roomNo + "]";
	}

	
}
