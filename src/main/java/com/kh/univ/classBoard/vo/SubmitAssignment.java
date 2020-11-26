package com.kh.univ.classBoard.vo;

public class SubmitAssignment {

	private int sSeq;
	private String sTitle;
	private String sContent;
	private String socre;
	private int classSeq;
	private int studId;
	
	public SubmitAssignment() {
		super();
	}

	public SubmitAssignment(int sSeq, String sTitle, String sContent, String socre, int classSeq, int studId) {
		super();
		this.sSeq = sSeq;
		this.sTitle = sTitle;
		this.sContent = sContent;
		this.socre = socre;
		this.classSeq = classSeq;
		this.studId = studId;
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

	public String getSocre() {
		return socre;
	}

	public void setSocre(String socre) {
		this.socre = socre;
	}

	public int getClassSeq() {
		return classSeq;
	}

	public void setClassSeq(int classSeq) {
		this.classSeq = classSeq;
	}

	public int getStudId() {
		return studId;
	}

	public void setStudId(int studId) {
		this.studId = studId;
	}

	@Override
	public String toString() {
		return "SubmitAssignment [sSeq=" + sSeq + ", sTitle=" + sTitle + ", sContent=" + sContent + ", socre=" + socre
				+ ", classSeq=" + classSeq + ", studId=" + studId + "]";
	}
	
	
	
}
