package com.kh.univ.grade.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.grade.model.vo.StudentGrade;

@Repository("gDao")
public class GradeDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	public ArrayList<StudentGrade> selectList(int i) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("GradeMapper.selectList",i);
	}

}
