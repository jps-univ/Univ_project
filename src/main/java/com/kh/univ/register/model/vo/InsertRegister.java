package com.kh.univ.register.model.vo;



public class InsertRegister {
	private int statusNO;				// 학적코드
	private int stdId;					// 학번
	private int stdSemester;                // 학기
	private String stdStatus;			// 학적 상태
	private String applicationStatus;	// 신청 상태
	private String applicationDate;		// 신청 날짜
	private String reasonsLeave;		// 휴학사유
	private String leavePeriod;			// 휴학 기간
	private String leaveDate;				// 휴학날짜
	private String returningDate;			// 복학 날짜
	private String graduationDate;		// 졸업 날짜
	
	
	public InsertRegister() {
		super();
	}





	public InsertRegister(int statusNO, int stdId, int stdSemester, String stdStatus, String applicationStatus,
			String applicationDate, String reasonsLeave, String leavePeriod, String leaveDate, String returningDate,
			String graduationDate) {
		super();
		this.statusNO = statusNO;
		this.stdId = stdId;
		this.stdSemester = stdSemester;
		this.stdStatus = stdStatus;
		this.applicationStatus = applicationStatus;
		this.applicationDate = applicationDate;
		this.reasonsLeave = reasonsLeave;
		this.leavePeriod = leavePeriod;
		this.leaveDate = leaveDate;
		this.returningDate = returningDate;
		this.graduationDate = graduationDate;
	}





	public int getStatusNO() {
		return statusNO;
	}


	public void setStatusNO(int statusNO) {
		this.statusNO = statusNO;
	}


	public int getStdId() {
		return stdId;
	}


	public void setStdId(int stdId) {
		this.stdId = stdId;
	}


	public int getStdSemester() {
		return stdSemester;
	}


	public void setStdSemester(int stdSemester) {
		this.stdSemester = stdSemester;
	}


	public String getStdStatus() {
		return stdStatus;
	}


	public void setStdStatus(String stdStatus) {
		this.stdStatus = stdStatus;
	}


	public String getApplicationStatus() {
		return applicationStatus;
	}


	public void setApplicationStatus(String applicationStatus) {
		this.applicationStatus = applicationStatus;
	}




	public String getReasonsLeave() {
		return reasonsLeave;
	}


	public void setReasonsLeave(String reasonsLeave) {
		this.reasonsLeave = reasonsLeave;
	}


	public String getLeavePeriod() {
		return leavePeriod;
	}


	public void setLeavePeriod(String leavePeriod) {
		this.leavePeriod = leavePeriod;
	}





	public String getApplicationDate() {
		return applicationDate;
	}





	public void setApplicationDate(String applicationDate) {
		this.applicationDate = applicationDate;
	}





	public String getLeaveDate() {
		return leaveDate;
	}





	public void setLeaveDate(String leaveDate) {
		this.leaveDate = leaveDate;
	}





	public String getReturningDate() {
		return returningDate;
	}





	public void setReturningDate(String returningDate) {
		this.returningDate = returningDate;
	}





	public String getGraduationDate() {
		return graduationDate;
	}





	public void setGraduationDate(String graduationDate) {
		this.graduationDate = graduationDate;
	}





	@Override
	public String toString() {
		return "Register [statusNO=" + statusNO + ", stdId=" + stdId + ", stdSemester=" + stdSemester + ", stdStatus="
				+ stdStatus + ", applicationStatus=" + applicationStatus + ", applicationDate=" + applicationDate
				+ ", reasonsLeave=" + reasonsLeave + ", leavePeriod=" + leavePeriod + ", leaveDate=" + leaveDate
				+ ", returningDate=" + returningDate + ", graduationDate=" + graduationDate + "]";
	}
}
