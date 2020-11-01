package com.kh.univ.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.Student;

@Repository("adStudentDao")
public class AdStudentDao {
	
    @Autowired
    private SqlSessionTemplate sqlSession;
    
	public ArrayList<Student> selectList() {
        return (ArrayList) sqlSession.selectList("adminStudentMapper.selectAdminStudent");
	}

	public Student selectOne(int stdId) {
		// TODO Auto-generated method stub
		return (Student)sqlSession.selectOne("adminStudentMapper.selectOneAdminStudent",stdId);
	}



}
