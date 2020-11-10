package com.kh.univ.mypage.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

public interface StudentMyPageService 
{
	/**
	 * 학생 개인정보 변경
	 * @param student
	 * @return
	 */
	int changeStdPersonalInfo(Student student);

	/**
	 * 학생 개인정보동의 변경
	 * @param student
	 * @return
	 */
	int changeStdAgreeInfo(Student student);
	
	/**
	 * 학생 비밀번호 확인
	 * @param student
	 * @return
	 */
	Student checkStdPwd(Student student);

	/**
	 * 학생 비밀번호 변경
	 * @param student
	 * @return
	 */
	int changeStdPassword(Student student);

	/**
	 * 학생 학적 조회
	 * @param student
	 * @return
	 */
	Student selectStdStatus(Student student);

	/**
	 * 학생 단과대, 학과 조회
	 * @param sessionStudent
	 * @return
	 */
	Student selectStdDepartment(Student student);

	/**
	 * 학생 시간표 조회
	 * @param lecture 
	 * @param sessionStudent
	 * @return
	 */
	ArrayList<Lecture> selectStdSchdule(Map map);

	/**
	 * 교수 조회
	 * @param map
	 * @return
	 */
	ArrayList<Professor> selectProfessor(Map map);
}