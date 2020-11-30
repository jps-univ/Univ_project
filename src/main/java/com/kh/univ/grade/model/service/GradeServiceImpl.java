package com.kh.univ.grade.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.grade.model.dao.GradeDao;
import com.kh.univ.grade.model.vo.StudentGrade;

@Service("gService")
public class GradeServiceImpl implements GradeService{
	
	@Autowired
	private GradeDao gDao;
	
	// 성적증명서 페이지
	@Override
	public ArrayList<StudentGrade> selectList(int i){
		
		return gDao.selectList(i);
	}
	
	
	
}
