package com.kh.univ.stmanagement.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.univ.stmanagement.model.vo.GradeA;
import com.kh.univ.stmanagement.model.vo.StudentManagement;

public interface StudentManagementService {

	ArrayList<StudentManagement> selectList(Map map);

	ArrayList<StudentManagement> selectDetailList(Map map);

	ArrayList<StudentManagement> gradeView(Map map);

	int insertGrade(GradeA g);
	
//	int insertGrade(Map map);

//	ArrayList<StudentManagement> selectListDetailList2(Map map);
}
