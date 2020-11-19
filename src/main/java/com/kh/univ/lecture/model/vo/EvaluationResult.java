package com.kh.univ.lecture.model.vo;

public class EvaluationResult 
{
	private int classSeq;
	private String classCode;
	private String className;
	private int profId;
	private String profName;
	private String room;
	private String classType;
	private int evalNo;
	private int stdId;
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
	private int classYear;
	private int classSemester;
	public EvaluationResult() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EvaluationResult(int classSeq, String classCode, String className, int profId, String profName, String room,
			String classType, int evalNo, int stdId, int evalOne, int evalTwo, int evalThree, int evalFour,
			int evalFive, int evalSix, int evalSeven, int evalEight, int evalNine, int evalTen, int classYear,
			int classSemester) {
		super();
		this.classSeq = classSeq;
		this.classCode = classCode;
		this.className = className;
		this.profId = profId;
		this.profName = profName;
		this.room = room;
		this.classType = classType;
		this.evalNo = evalNo;
		this.stdId = stdId;
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
		this.classYear = classYear;
		this.classSemester = classSemester;
	}
	@Override
	public String toString() {
		return "EvaluationResult [classSeq=" + classSeq + ", classCode=" + classCode + ", className=" + className
				+ ", profId=" + profId + ", profName=" + profName + ", room=" + room + ", classType=" + classType
				+ ", evalNo=" + evalNo + ", stdId=" + stdId + ", evalOne=" + evalOne + ", evalTwo=" + evalTwo
				+ ", evalThree=" + evalThree + ", evalFour=" + evalFour + ", evalFive=" + evalFive + ", evalSix="
				+ evalSix + ", evalSeven=" + evalSeven + ", evalEight=" + evalEight + ", evalNine=" + evalNine
				+ ", evalTen=" + evalTen + ", classYear=" + classYear + ", classSemester=" + classSemester + "]";
	}
	public int getClassSeq() {
		return classSeq;
	}
	public void setClassSeq(int classSeq) {
		this.classSeq = classSeq;
	}
	public String getClassCode() {
		return classCode;
	}
	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
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
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getClassType() {
		return classType;
	}
	public void setClassType(String classType) {
		this.classType = classType;
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
	public int getClassYear() {
		return classYear;
	}
	public void setClassYear(int classYear) {
		this.classYear = classYear;
	}
	public int getClassSemester() {
		return classSemester;
	}
	public void setClassSemester(int classSemester) {
		this.classSemester = classSemester;
	}
	
}