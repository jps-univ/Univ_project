package com.kh.univ.stmanagement.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.stmanagement.model.vo.GradeA;
import com.kh.univ.stmanagement.model.vo.StudentManagement;

@Repository("smDao")
public class StudentManagementDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<StudentManagement> selectList(Map map) {
		return (ArrayList)sqlSession.selectList("StudentManagementMapper.selectList",map);
	}

	public ArrayList<StudentManagement> selectDetailList(Map map) {
		return (ArrayList)sqlSession.selectList("StudentManagementMapper.selectdDetailList",map);
	}

	public ArrayList<GradeA> gradeView(Map map) {
		return (ArrayList)sqlSession.selectList("StudentManagementMapper.gradeView",map);
	}

	public int insertGrade(GradeA g) {
		return sqlSession.insert("StudentManagementMapper.grade",g);
	}
	
//	public int insertGrade(Map map) {
//		return sqlSession.insert("StudentManagementMapper.grade",map);
//	}

//	public ArrayList<StudentManagement> selectDetailList2(Map map) {
//		return (ArrayList)sqlSession.selectList("StudentManagementMapper.selectdDetailList2",map);
//	}


}
