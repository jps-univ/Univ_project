package com.kh.univ.lecture.model.vo;

public class LectureApplication 
{
	private int registerSeq;	// 수강신청 시퀀스
	private int stdId;			// 학생번호(학번)
	private int classSeq;		// 과목 시퀀스
	
	public LectureApplication() {}
	
	public LectureApplication(int registerSeq, int stdId, int classSeq) 
	{
		super();
		this.registerSeq = registerSeq;
		this.stdId = stdId;
		this.classSeq = classSeq;
	}
	
	public int getRegisterSeq() {
		return registerSeq;
	}
	public void setRegisterSeq(int registerSeq) {
		this.registerSeq = registerSeq;
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
	
	@Override
	public String toString() 
	{
		return "registerSeq=" + registerSeq + ", stdId=" + stdId + ", classSeq=" + classSeq;
	}
}