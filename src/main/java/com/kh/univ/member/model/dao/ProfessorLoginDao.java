package com.kh.univ.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@Repository("plDao")
public class ProfessorLoginDao 
{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public Professor login(Professor professor) {
		return (Professor)sqlSession.selectOne("ProfessorMapper.loginProfessor",professor);
	}

	public List<Student> findId(Professor std) {
		return sqlSession.selectList("ProfessorMapper.findId",std);
	}

	public Professor findByNameAndEmail(Professor professor) {
		return sqlSession.selectOne("ProfessorMapper.findByNameAndEmail",professor);
	}

	public Professor findByIdAndNameAndEmail(Professor professor) {
		return sqlSession.selectOne("ProfessorMapper.findByIdAndNameAndEmail",professor);
	}

	public int updateById(Professor professor) {
		return sqlSession.update("ProfessorMapper.updateById",professor);
	}

}
