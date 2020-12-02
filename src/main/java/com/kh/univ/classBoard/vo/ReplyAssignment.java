package com.kh.univ.classBoard.vo;

import java.sql.Date;

public class ReplyAssignment {

	private int sSeq;
	private String sTitle;
	private String sContent;
	private String score;
	private int classSeq;
	private int stdId;
	private int aSeq;
	private String originalFileName;
	private String renameFileName;
	private String profComment;
	private Date sCreateDate;
	private Date sModifyDate;
	private String profReply;
	private String studQa;
	private String statusReply;
	
	private String aTitle;


	private int profId;
	private String profName;
	
	public ReplyAssignment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReplyAssignment(int sSeq, String sTitle, String sContent, String score, int classSeq, int stdId, int aSeq,
			String originalFileName, String renameFileName, String profComment, Date sCreateDate, Date sModifyDate,
			String profReply, String studQa, String statusReply, String aTitle, int profId, String profName) {
		super();
		this.sSeq = sSeq;
		this.sTitle = sTitle;
		this.sContent = sContent;
		this.score = score;
		this.classSeq = classSeq;
		this.stdId = stdId;
		this.aSeq = aSeq;
		this.originalFileName = originalFileName;
		this.renameFileName = renameFileName;
		this.profComment = profComment;
		this.sCreateDate = sCreateDate;
		this.sModifyDate = sModifyDate;
		this.profReply = profReply;
		this.studQa = studQa;
		this.statusReply = statusReply;
		this.aTitle = aTitle;
		this.profId = profId;
		this.profName = profName;
	}
	

	public int getsSeq() {
		return sSeq;
	}

	public void setsSeq(int sSeq) {
		this.sSeq = sSeq;
	}

	public String getsTitle() {
		return sTitle;
	}

	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}

	public String getaTitle() {
		return aTitle;
	}

	public void setaTitle(String aTitle) {
		this.aTitle = aTitle;
	}

	public String getsContent() {
		return sContent;
	}

	public void setsContent(String sContent) {
		this.sContent = sContent;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public int getClassSeq() {
		return classSeq;
	}

	public void setClassSeq(int classSeq) {
		this.classSeq = classSeq;
	}

	public int getStdId() {
		return stdId;
	}

	public void setStdId(int stdId) {
		this.stdId = stdId;
	}

	public int getaSeq() {
		return aSeq;
	}

	public void setaSeq(int aSeq) {
		this.aSeq = aSeq;
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

	public String getProfComment() {
		return profComment;
	}

	public void setProfComment(String profComment) {
		this.profComment = profComment;
	}

	public Date getsCreateDate() {
		return sCreateDate;
	}

	public void setsCreateDate(Date sCreateDate) {
		this.sCreateDate = sCreateDate;
	}

	public Date getsModifyDate() {
		return sModifyDate;
	}

	public void setsModifyDate(Date sModifyDate) {
		this.sModifyDate = sModifyDate;
	}

	public String getProfReply() {
		return profReply;
	}

	public void setProfReply(String profReply) {
		this.profReply = profReply;
	}

	public String getStudQa() {
		return studQa;
	}

	public void setStudQa(String studQa) {
		this.studQa = studQa;
	}

	public String getStatusReply() {
		return statusReply;
	}

	public void setStatusReply(String statusReply) {
		this.statusReply = statusReply;
	}

	public int getProfId() {
		return profId;
	}

	public void setProfId(int profId) {
		this.profId = profId;
	}

	public String getProfName() {
		return profName;
	}

	public void setProfName(String profName) {
		this.profName = profName;
	}

	@Override
	public String toString() {
		return "ReplyAssignment [sSeq=" + sSeq + ", sTitle=" + sTitle + ", sContent=" + sContent + ", score=" + score
				+ ", classSeq=" + classSeq + ", stdId=" + stdId + ", aSeq=" + aSeq + ", originalFileName="
				+ originalFileName + ", renameFileName=" + renameFileName + ", profComment=" + profComment
				+ ", sCreateDate=" + sCreateDate + ", sModifyDate=" + sModifyDate + ", profReply=" + profReply
				+ ", studQa=" + studQa + ", statusReply=" + statusReply + ", aTitle=" + aTitle + ", profId=" + profId
				+ ", profName=" + profName + ", getsSeq()=" + getsSeq() + ", getsTitle()=" + getsTitle()
				+ ", getsContent()=" + getsContent() + ", getScore()=" + getScore() + ", getClassSeq()=" + getClassSeq()
				+ ", getStdId()=" + getStdId() + ", getaSeq()=" + getaSeq() + ", getOriginalFileName()="
				+ getOriginalFileName() + ", getRenameFileName()=" + getRenameFileName() + ", getProfComment()="
				+ getProfComment() + ", getsCreateDate()=" + getsCreateDate() + ", getsModifyDate()=" + getsModifyDate()
				+ ", getProfReply()=" + getProfReply() + ", getStudQa()=" + getStudQa() + ", getStatusReply()="
				+ getStatusReply() + ", getProfId()=" + getProfId() + ", getProfName()=" + getProfName()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	
}
