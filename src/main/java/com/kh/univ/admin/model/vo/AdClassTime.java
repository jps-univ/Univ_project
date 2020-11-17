package com.kh.univ.admin.model.vo;

// 관리자 수업 시간 insert
public class AdClassTime {
	
	private int classTimeSeq;
	private int classSeq;
	private String day;
	private String hour;
	
	public AdClassTime() {
		super();
	}
	
	public AdClassTime(int classTimeSeq, int classSeq, String day, String hour) {
		super();
		this.classTimeSeq = classTimeSeq;
		this.classSeq = classSeq;
		this.day = day;
		this.hour = hour;
	}
	
	public int getClassTimeSeq() {
		return classTimeSeq;
	}
	public void setClassTimeSeq(int classTimeSeq) {
		this.classTimeSeq = classTimeSeq;
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
		return "AdClassTime [classTimeSeq=" + classTimeSeq + ", classSeq=" + classSeq + ", day=" + day + ", hour="
				+ hour + "]";
	}
	
	
}
