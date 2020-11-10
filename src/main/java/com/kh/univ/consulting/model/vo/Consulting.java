package com.kh.univ.consulting.model.vo;

import java.sql.Date;

public class Consulting 
{
	private int consultingNo;			// 상담 시퀀스
	private int stdId;					// 학생 번호
	private int profId;					// 교수 번호
	private String consultingStatus;	// 상담 상태
	private Date applyDate;				// 상담 신청 일자
	private Date progressDate;			// 상담 진행 일자
	private Date completeDate;			// 상담 완료 일자
	private Date cancleDate;			// 상담 취소 일자
	
	public Consulting() {}
	
	// 전체 매개 변수
	public Consulting(int consultingNo, int stdId, int profId, String consultingStatus, Date applyDate, Date progressDate, Date completeDate, Date cancleDate) 
	{
		super();
		this.consultingNo = consultingNo;
		this.stdId = stdId;
		this.profId = profId;
		this.consultingStatus = consultingStatus;
		this.applyDate = applyDate;
		this.progressDate = progressDate;
		this.completeDate = completeDate;
		this.cancleDate = cancleDate;
	}
	
	public int getConsultingNo() {
		return consultingNo;
	}
	public void setConsultingNo(int consultingNo) {
		this.consultingNo = consultingNo;
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
	public String getConsultingStatus() {
		return consultingStatus;
	}
	public void setConsultingStatus(String consultingStatus) {
		this.consultingStatus = consultingStatus;
	}
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	public Date getProgressDate() {
		return progressDate;
	}
	public void setProgressDate(Date progressDate) {
		this.progressDate = progressDate;
	}
	public Date getCompleteDate() {
		return completeDate;
	}
	public void setCompleteDate(Date completeDate) {
		this.completeDate = completeDate;
	}
	public Date getCancleDate() {
		return cancleDate;
	}
	public void setCancleDate(Date cancleDate) {
		this.cancleDate = cancleDate;
	}

	@Override
	public String toString() 
	{
		return "consultingNo=" + consultingNo + ", stdId=" + stdId + ", profId=" + profId + ", consultingStatus=" + consultingStatus + ", applyDate=" + applyDate + ", progressDate=" + progressDate + ", completeDate=" + completeDate + ", cancleDate=" + cancleDate;
	}
}