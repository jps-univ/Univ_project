package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Professor;


public interface AdProfessorService {

	 ArrayList<Professor> selectList();

	Professor selectOne(int profId);

	ArrayList<College> selectDept();

	ArrayList<Department> deptCheck(String collegeCode);

	int updateOne(Professor pro);

}
