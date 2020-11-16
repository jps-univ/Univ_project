package com.kh.univ.lecture.model.vo;

public class LectureTime 
{
     private int ctSeq;			// 시퀀스
     private int classSeq;		// 수업 시퀀스
     private String day;		// 요일
     private String hour;		// 교시

	private String dayHour; // 요일+교시 묶어오는 컬럼
     
	public LectureTime() {}
	
	public LectureTime(int ctSeq, int classSeq, String day, String hour) {
		super();
		this.ctSeq = ctSeq;
		this.classSeq = classSeq;
		this.day = day;
		this.hour = hour;
	}

	public LectureTime(int ctSeq, int classSeq, String day, String hour, String dayHour) {
		this.ctSeq = ctSeq;
		this.classSeq = classSeq;
		this.day = day;
		this.hour = hour;
		this.dayHour = dayHour;
	}

	public String getDayHour() {
		return dayHour;
	}

	public void setDayHour(String dayHour) {
		this.dayHour = dayHour;
	}

	public int getCtSeq() {
		return ctSeq;
	}
	public void setCtSeq(int ctSeq) {
		this.ctSeq = ctSeq;
	}
	public int getClassSeq() {
		return classSeq;
	}
	public void setClassSeq(int classSeq) {
		this.classSeq = classSeq;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getHour() {
		return hour;
	}
	public void setHour(String hour) {
		this.hour = hour;
	}

	@Override
	public String toString() {
		return "LectureTime{" +
				"ctSeq=" + ctSeq +
				", classSeq=" + classSeq +
				", day='" + day + '\'' +
				", hour='" + hour + '\'' +
				", dayHour='" + dayHour + '\'' +
				'}';
	}
}