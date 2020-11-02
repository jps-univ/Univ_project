package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import com.kh.univ.member.model.vo.Student;

public interface AdStudentService {

	 ArrayList<Student> selectList();

	Student selectOne(int stdId);

	int selectOneUpdate(Student std);
	

	

}
