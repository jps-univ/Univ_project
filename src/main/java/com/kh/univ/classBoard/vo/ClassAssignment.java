package com.kh.univ.classBoard.vo;

import java.sql.Date;

public class ClassAssignment {
	private int aSeq;
	private String aTitle;
	private String aContent;
	private Date dueDate;
	private int profId;
	private int classSeq;
	private int aCount;
	private Date aCreateDate;
	private Date aModifyDate;
	private String aStatus;
	private String originalFileName;
	private String renameFileName;
	
	private String profName;
	private int stdId;
	
	public ClassAssignment() {
		super();
	}

	public ClassAssignment(int aSeq, String aTitle, String aContent, Date dueDate, int profId, int classSeq, int aCount,
			Date aCreateDate, Date aModifyDate, String aStatus, String originalFileName, String renameFileName,
			String profName, int stdId) {
		super();
		this.aSeq = aSeq;
		this.aTitle = aTitle;
		this.aContent = aContent;
		this.dueDate = dueDate;
		this.profId = profId;
		this.classSeq = classSeq;
		this.aCount = aCount;
		this.aCreateDate = aCreateDate;
		this.aModifyDate = aModifyDate;
		this.aStatus = aStatus;
		this.originalFileName = originalFileName;
		this.renameFileName = renameFileName;
		this.profName = profName;
		this.stdId = stdId;
	}

	public int getaSeq() {
		return aSeq;
	}

	public void setaSeq(int aSeq) {
		this.aSeq = aSeq;
	}

	public String getaTitle() {
		return aTitle;
	}

	public void setaTitle(String aTitle) {
		this.aTitle = aTitle;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
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

	public int getaCount() {
		return aCount;
	}

	public void setaCount(int aCount) {
		this.aCount = aCount;
	}

	public Date getaCreateDate() {
		return aCreateDate;
	}

	public void setaCreateDate(Date aCreateDate) {
		this.aCreateDate = aCreateDate;
	}

	public Date getaModifyDate() {
		return aModifyDate;
	}

	public void setaModifyDate(Date aModifyDate) {
		this.aModifyDate = aModifyDate;
	}

	public String getaStatus() {
		return aStatus;
	}

	public void setaStatus(String aStatus) {
		this.aStatus = aStatus;
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

	public int getStdId() {
		return stdId;
	}

	public void setStdId(int stdId) {
		this.stdId = stdId;
	}

	@Override
	public String toString() {
		return "ClassAssignment [aSeq=" + aSeq + ", aTitle=" + aTitle + ", aContent=" + aContent + ", dueDate="
				+ dueDate + ", profId=" + profId + ", classSeq=" + classSeq + ", aCount=" + aCount + ", aCreateDate="
				+ aCreateDate + ", aModifyDate=" + aModifyDate + ", aStatus=" + aStatus + ", originalFileName="
				+ originalFileName + ", renameFileName=" + renameFileName + ", profName=" + profName + ", stdId="
				+ stdId + "]";
	}


}