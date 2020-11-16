package com.kh.univ.admin.model.vo;

public class AdProfessor {
	
	private int ProfessorId;
	private String professorName;
	
	public AdProfessor() {
		super();
	}
	
	public AdProfessor(int professorId, String professorName) {
		super();
		ProfessorId = professorId;
		this.professorName = professorName;
	}
	public int getProfessorId() {
		return ProfessorId;
	}
	public void setProfessorId(int professorId) {
		ProfessorId = professorId;
	}
	public String getProfessorName() {
		return professorName;
	}
	public void setProfessorName(String professorName) {
		this.professorName = professorName;
	}
	@Override
	public String toString() {
		return "AdProfessor [ProfessorId=" + ProfessorId + ", professorName=" + professorName + "]";
	}
	
	
}
