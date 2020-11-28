package com.kh.univ.classBoard.vo;

import java.sql.Date;

public class ReplyAssignment {

	private int sSeq;
	private String sTitle;
	private String sContent;
	private int score;
	private int classSeq;
	private int stdId;
	private int aSeq;
	private String originalFileName;
	private String renameFileName;
	private String porfComment;
	private Date sCreateDate;
	private Date sModifyDate;
	
	private int profId;
	private String profName;
	
	public ReplyAssignment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReplyAssignment(int sSeq, String sTitle, String sContent, int score, int classSeq, int stdId, int aSeq,
			String originalFileName, String renameFileName, String porfComment, Date sCreateDate, Date sModifyDate,
			int profId, String profName) {
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
		this.porfComment = porfComment;
		this.sCreateDate = sCreateDate;
		this.sModifyDate = sModifyDate;
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

	public String getsContent() {
		return sContent;
	}

	public void setsContent(String sContent) {
		this.sContent = sContent;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
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

	public String getPorfComment() {
		return porfComment;
	}

	public void setPorfComment(String porfComment) {
		this.porfComment = porfComment;
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
				+ originalFileName + ", renameFileName=" + renameFileName + ", porfComment=" + porfComment
				+ ", sCreateDate=" + sCreateDate + ", sModifyDate=" + sModifyDate + ", profId=" + profId + ", profName="
				+ profName + "]";
	}


}
