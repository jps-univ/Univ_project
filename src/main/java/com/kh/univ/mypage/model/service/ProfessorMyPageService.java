package com.kh.univ.mypage.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.univ.consulting.model.vo.Consulting;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

public interface ProfessorMyPageService 
{
	/**
	 * 교수 학부, 학과 조회
	 * @param Student
	 * @return
	 */
	Professor selectProfDepartment(Professor professor);
	
	/**
	 * 교수 개인정보 변경
	 * @param professor
	 * @return
	 */
	int changeProfPersonalInfo(Professor professor);

	/**
	 * 교수 개인정보동의 변경
	 * @param professor
	 * @return
	 */
	int changeProfAgreeInfo(Professor professor);

	/**
	 * 교수 비밀번호 확인
	 * @param professor
	 * @return
	 */
	Professor checkProfPwd(Professor professor);

	/**
	 * 교수 비밀번호 변경
	 * @param professor
	 * @return
	 */
	int changeProfPwd(Professor professor);

	/**
	 * 교수 시간표 조회
	 * @param map
	 * @return
	 */
	ArrayList<Lecture> selectProfSchdule(Map map);
}