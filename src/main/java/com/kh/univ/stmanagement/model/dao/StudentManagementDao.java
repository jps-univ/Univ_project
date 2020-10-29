package com.kh.univ.stmanagement.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.stmanagement.model.vo.StudentManagement;

@Repository("smDao")
public class StudentManagementDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<StudentManagement> selectList() {
		return (ArrayList)sqlSession.selectList("StudentManagementMapper.selectList");
	}

	public ArrayList<StudentManagement> selectDetailList() {
		return (ArrayList)sqlSession.selectList("StudentManagementMapper.selectdDetailList");
	}


}
