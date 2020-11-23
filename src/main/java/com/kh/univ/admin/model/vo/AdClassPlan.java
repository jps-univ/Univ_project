package com.kh.univ.admin.model.vo;

public class AdClassPlan {

	private String planNO;
	private int classSeq;
	private int week;
	private String weekPlan;
	
	
	public AdClassPlan() {
		super();
	}


	public AdClassPlan(String planNO, int classSeq, int week, String weekPlan) {
		super();
		this.planNO = planNO;
		this.classSeq = classSeq;
		this.week = week;
		this.weekPlan = weekPlan;
	}


	public String getPlanNO() {
		return planNO;
	}


	public void setPlanNO(String planNO) {
		this.planNO = planNO;
	}


	public int getClassSeq() {
		return classSeq;
	}


	public void setClassSeq(int classSeq) {
		this.classSeq = classSeq;
	}


	public int getWeek() {
		return week;
	}


	public void setWeek(int week) {
		this.week = week;
	}


	public String getWeekPlan() {
		return weekPlan;
	}


	public void setWeekPlan(String weekPlan) {
		this.weekPlan = weekPlan;
	}


	@Override
	public String toString() {
		return "AdClassPlan [planNO=" + planNO + ", classSeq=" + classSeq + ", week=" + week + ", weekPlan=" + weekPlan
				+ "]";
	}
	
	
	
}
