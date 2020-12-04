package com.kh.univ.grade.model.service;

import java.util.ArrayList;

import com.kh.univ.grade.model.vo.Grade;
import com.kh.univ.grade.model.vo.StudentGrade;

public interface GradeService {
	
	// 학생이 수강한 과목 불러오기,학점, 수강분류등 불러오기
	ArrayList<StudentGrade> selectList(int i);
	
	// 
	
	// 
	
}
