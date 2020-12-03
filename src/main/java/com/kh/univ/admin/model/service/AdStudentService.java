package com.kh.univ.admin.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Student;

public interface AdStudentService {

	ArrayList<Student> selectList();

	Student selectOne(int stdId);

	int selectOneUpdate(Student std);

	ArrayList<College> selectDept();

	ArrayList<Department> deptCheck(String collegeCode);

	int insertStudent(Student std);


	ArrayList<Student> searchStd(Map map);
	

	

}
