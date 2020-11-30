package com.kh.univ.grade.model.service;

import java.util.ArrayList;

import com.kh.univ.grade.model.vo.Grade;
import com.kh.univ.grade.model.vo.StudentGrade;

public interface GradeService {
	
	// 학생이 수강한 과목 불러오기
	ArrayList<StudentGrade> selectList(int i);
	
	// 학생의 총 들은 학점 불러오기
	
	// 
	
}
