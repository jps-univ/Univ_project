package com.kh.univ.classBoard.vo;

import java.sql.Date;

public class ClassNotice {

	private int nId;			// notice번호
	private String nTitle;		// 제목
	private String nContent;	// 내용
	private int profId;			// 교수번호
	private int classSeq;		// 수업 시퀀스
	private int nCount;			// 조회수
	private Date nCreateDate;	// 작성날짜
	private Date nModifyDate;	// 수정날짜
	private String status;		// 삭제 여부
	private String originalFileName;
	private String renameFileName;
	
	private String profName;	// 교수 이름
	
	
	public ClassNotice(int nId, String nTitle, String nContent, int profId, int classSeq, int nCount, Date nCreateDate,
			Date nModifyDate, String status, String originalFileName, String renameFileName, String profName) {
		super();
		this.nId = nId;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.profId = profId;
		this.classSeq = classSeq;
		this.nCount = nCount;
		this.nCreateDate = nCreateDate;
		this.nModifyDate = nModifyDate;
		this.status = status;
		this.originalFileName = originalFileName;
		this.renameFileName = renameFileName;
		this.profName = profName;
	}

	public ClassNotice() {
		super();
		// TODO Auto-generated constructor stub
	}




	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getRenameFileName() {
		return renameFileName;
	}

	public void setRenameFileName(String renameFileName) {
		this.renameFileName = renameFileName;
	}

	public String getProfName() {
		return profName;
	}

	public void setProfName(String profName) {
		this.profName = profName;
	}

	public int getnId() {
		return nId;
	}

	public void setnId(int nId) {
		this.nId = nId;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public int getProfId() {
		return profId;
	}

	public void setProfId(int profId) {
		this.profId = profId;
	}

	public int getClassSeq() {
		return classSeq;
	}

	public void setClassSeq(int classSeq) {
		this.classSeq = classSeq;
	}

	public int getnCount() {
		return nCount;
	}

	public void setnCount(int nCount) {
		this.nCount = nCount;
	}

	public Date getnCreateDate() {
		return nCreateDate;
	}

	public void setnCreateDate(Date nCreateDate) {
		this.nCreateDate = nCreateDate;
	}

	public Date getnModifyDate() {
		return nModifyDate;
	}

	public void setnModifyDate(Date nModifyDate) {
		this.nModifyDate = nModifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "ClassNotice [nId=" + nId + ", nTitle=" + nTitle + ", nContent=" + nContent + ", profId=" + profId
				+ ", classSeq=" + classSeq + ", nCount=" + nCount + ", nCreateDate=" + nCreateDate + ", nModifyDate="
				+ nModifyDate + ", status=" + status + ", originalFileName=" + originalFileName + ", renameFileName="
				+ renameFileName + ", profName=" + profName + "]";
	}


	
	
	
}
