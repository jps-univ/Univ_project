package com.kh.univ.stmanagement.model.service;

import java.util.ArrayList;

import com.kh.univ.stmanagement.model.vo.GradeA;
import com.kh.univ.stmanagement.model.vo.StudentManagement;

public interface StudentManagementService {

	ArrayList<StudentManagement> selectList(int profId);

	ArrayList<StudentManagement> selectDetailList();

	ArrayList<StudentManagement> gradeView();

	int insertGrade(GradeA g);
}
