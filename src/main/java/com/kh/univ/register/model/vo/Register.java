package com.kh.univ.register.model.vo;

import java.sql.Date;

// 학적 
public class Register {
	private int statusNO;				// 학적코드
	private int stdId;					// 학번
	private String stdStatus;			// 학적 상태
	private String applicationStatus;	// 신청 상태
	private Date applicationDate;		// 신청 날짜
	private String reasonsLeave;		// 휴학사유
	private String leavePeriod;			// 휴학 기간
	private Date leaveDate;				// 휴학날짜
	private Date returningDate;			// 복학 날짜
	private Date graduationDate;		// 졸업 날짜
	
	
	public Register() {
		super();
	}


	public Register(int statusNO, int stdId, String stdStatus, String applicationStatus, Date applicationDate,
			String reasonsLeave, String leavePeriod, Date leaveDate, Date returningDate, Date graduationDate) {
		super();
		this.statusNO = statusNO;
		this.stdId = stdId;
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


	public Date getApplicationDate() {
		return applicationDate;
	}


	public void setApplicationDate(Date applicationDate) {
		this.applicationDate = applicationDate;
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


	public Date getLeaveDate() {
		return leaveDate;
	}


	public void setLeaveDate(Date leaveDate) {
		this.leaveDate = leaveDate;
	}


	public Date getReturningDate() {
		return returningDate;
	}


	public void setReturningDate(Date returningDate) {
		this.returningDate = returningDate;
	}


	public Date getGraduationDate() {
		return graduationDate;
	}


	public void setGraduationDate(Date graduationDate) {
		this.graduationDate = graduationDate;
	}


	@Override
	public String toString() {
		return "Register [statusNO=" + statusNO + ", stdId=" + stdId + ", stdStatus=" + stdStatus
				+ ", applicationStatus=" + applicationStatus + ", applicationDate=" + applicationDate
				+ ", reasonsLeave=" + reasonsLeave + ", leavePeriod=" + leavePeriod + ", leaveDate=" + leaveDate
				+ ", returningDate=" + returningDate + ", graduationDate=" + graduationDate + "]";
	}
	
	
}
