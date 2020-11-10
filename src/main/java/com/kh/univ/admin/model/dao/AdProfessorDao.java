package com.kh.univ.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.Professor;

@Repository("adProfessorDao")
public class AdProfessorDao {

    @Autowired
    private SqlSessionTemplate sqlSession;

	public ArrayList<Professor> selectList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminProfessorMapper.selectAdminProfessor");
	}
}
