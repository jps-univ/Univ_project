package com.kh.univ.stmanagement.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.univ.stmanagement.model.vo.Attendance;
import com.kh.univ.stmanagement.model.vo.GradeA;
import com.kh.univ.stmanagement.model.vo.StudentManagement;

public interface StudentManagementService {

	ArrayList<StudentManagement> selectList(Map map);

	ArrayList<StudentManagement> selectDetailList(Map map);

	ArrayList<GradeA> gradeView(Map map);

	int insertGrade(GradeA g);

	ArrayList<Attendance> attendanceView(Map map);

	int insertAtt(Attendance att);
	
//	int insertGrade(Map map);

//	ArrayList<StudentManagement> selectListDetailList2(Map map);
}
