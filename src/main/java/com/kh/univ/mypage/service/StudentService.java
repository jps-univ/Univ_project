package com.kh.univ.mypage.service;

import com.kh.univ.member.model.vo.Student;

public interface StudentService 
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
	int checkStdPwd(Student student);

}