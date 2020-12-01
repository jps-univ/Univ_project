package com.kh.univ.mypage.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.univ.classBoard.vo.PageInfo;
import com.kh.univ.consulting.model.vo.Consulting;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Image;
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
	 * 학생 학부, 학과 조회
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

	/**
	 * 상담 신청
	 * @param map
	 * @return
	 */
	int applyConsulting(Map map);

	/**
	 * 상담 신청 조회
	 * @param sessionStudent
	 * @return
	 */
	ArrayList<Consulting> selectApply(Student student);

	/**
	 * 상담 취소
	 * @param consulting
	 * @return
	 */
	int cancleConsulting(Consulting consulting);

	/**
	 * 교수 페이징 처리
	 * @param map
	 * @return
	 */
	int getProfCount(Map map);

	ArrayList<Professor> selectProfessor2(PageInfo pi);

	/**
	 * 학생 이미지 저장
	 * @param i
	 * @return
	 */
	int insertStdImage(Image i);

	/**
	 * 학생 이미지 조회
	 * @param sessionStudent
	 * @return
	 */
	ArrayList<Image> selectStdImage(Student student);
}