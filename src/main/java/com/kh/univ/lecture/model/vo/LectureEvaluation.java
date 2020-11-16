package com.kh.univ.lecture.model.vo;

public class LectureEvaluation
{
	private int evalNo;
	private int stdId;
	private int classSeq;
	private int evalOne;
	private int evalTwo;
	private int evalThree;
	private int evalFour;
	private int evalFive;
	private int evalSix;
	private int evalSeven;
	private int evalEight;
	private int evalNine;
	private int evalTen;
	
	private Lecture lecture;
	private String profName;
	public LectureEvaluation() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LectureEvaluation(int evalNo, int stdId, int classSeq, int evalOne, int evalTwo, int evalThree, int evalFour,
			int evalFive, int evalSix, int evalSeven, int evalEight, int evalNine, int evalTen, Lecture lecture,
			String profName) {
		super();
		this.evalNo = evalNo;
		this.stdId = stdId;
		this.classSeq = classSeq;
		this.evalOne = evalOne;
		this.evalTwo = evalTwo;
		this.evalThree = evalThree;
		this.evalFour = evalFour;
		this.evalFive = evalFive;
		this.evalSix = evalSix;
		this.evalSeven = evalSeven;
		this.evalEight = evalEight;
		this.evalNine = evalNine;
		this.evalTen = evalTen;
		this.lecture = lecture;
		this.profName = profName;
	}
	public int getEvalNo() {
		return evalNo;
	}
	public void setEvalNo(int evalNo) {
		this.evalNo = evalNo;
	}
	public int getStdId() {
		return stdId;
	}
	public void setStdId(int stdId) {
		this.stdId = stdId;
	}
	public int getClassSeq() {
		return classSeq;
	}
	public void setClassSeq(int classSeq) {
		this.classSeq = classSeq;
	}
	public int getEvalOne() {
		return evalOne;
	}
	public void setEvalOne(int evalOne) {
		this.evalOne = evalOne;
	}
	public int getEvalTwo() {
		return evalTwo;
	}
	public void setEvalTwo(int evalTwo) {
		this.evalTwo = evalTwo;
	}
	public int getEvalThree() {
		return evalThree;
	}
	public void setEvalThree(int evalThree) {
		this.evalThree = evalThree;
	}
	public int getEvalFour() {
		return evalFour;
	}
	public void setEvalFour(int evalFour) {
		this.evalFour = evalFour;
	}
	public int getEvalFive() {
		return evalFive;
	}
	public void setEvalFive(int evalFive) {
		this.evalFive = evalFive;
	}
	public int getEvalSix() {
		return evalSix;
	}
	public void setEvalSix(int evalSix) {
		this.evalSix = evalSix;
	}
	public int getEvalSeven() {
		return evalSeven;
	}
	public void setEvalSeven(int evalSeven) {
		this.evalSeven = evalSeven;
	}
	public int getEvalEight() {
		return evalEight;
	}
	public void setEvalEight(int evalEight) {
		this.evalEight = evalEight;
	}
	public int getEvalNine() {
		return evalNine;
	}
	public void setEvalNine(int evalNine) {
		this.evalNine = evalNine;
	}
	public int getEvalTen() {
		return evalTen;
	}
	public void setEvalTen(int evalTen) {
		this.evalTen = evalTen;
	}
	public Lecture getLecture() {
		return lecture;
	}
	public void setLecture(Lecture lecture) {
		this.lecture = lecture;
	}
	public String getProfName() {
		return profName;
	}
	public void setProfName(String profName) {
		this.profName = profName;
	}
	@Override
	public String toString() {
		return "LectureEvaluation [evalNo=" + evalNo + ", stdId=" + stdId + ", classSeq=" + classSeq + ", evalOne="
				+ evalOne + ", evalTwo=" + evalTwo + ", evalThree=" + evalThree + ", evalFour=" + evalFour
				+ ", evalFive=" + evalFive + ", evalSix=" + evalSix + ", evalSeven=" + evalSeven + ", evalEight="
				+ evalEight + ", evalNine=" + evalNine + ", evalTen=" + evalTen + ", lecture=" + lecture + ", profName="
				+ profName + "]";
	}
}