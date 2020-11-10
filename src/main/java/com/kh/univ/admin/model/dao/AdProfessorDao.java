package com.kh.univ.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Professor;

@Repository("adProfessorDao")
public class AdProfessorDao {

    @Autowired
    private SqlSessionTemplate sqlSession;

	public ArrayList<Professor> selectList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminProfessorMapper.selectAdminProfessor");
	}

	public Professor selectOne(int profId) {
		// TODO Auto-generated method stub
		return (Professor)sqlSession.selectOne("adminProfessorMapper.selectAdminProfessorOne",profId);
	}

	public ArrayList<College> selectDept() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminProfessorMapper.selectAdminDept");
	}

	public ArrayList<Department> deptCheck(String collegeCode) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminProfessorMapper.selectDeptCheck",collegeCode);
	}
}
