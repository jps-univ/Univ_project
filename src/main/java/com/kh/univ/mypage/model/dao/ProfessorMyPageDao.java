package com.kh.univ.mypage.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.consulting.model.vo.Consulting;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Image;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.register.model.vo.Register;

@Repository("mpDao")
public class ProfessorMyPageDao 
{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public Professor selectProfDepartment(Professor professor) 
	{
		return (Professor)sqlSession.selectOne("ProfessorMyPageMapper.selectProfDepartment", professor);
	}
	
	public int changeProfPersonalInfo(Professor professor) 
	{
		return sqlSession.update("ProfessorMyPageMapper.changeProfPersonalInfo", professor);
	}

	public int changeProfAgreeInfo(Professor professor) 
	{
		return sqlSession.update("ProfessorMyPageMapper.changeProfAgreeInfo", professor);
	}

	public Professor checkProfPwd(Professor professor) 
	{
		return (Professor)sqlSession.selectOne("ProfessorMyPageMapper.checkProfPwd", professor);
	}

	public int changeProfPwd(Professor professor) 
	{
		return sqlSession.update("ProfessorMyPageMapper.changeProfPwd", professor);
	}

	public ArrayList<Lecture> selectProfSchdule(Map map) 
	{
		return (ArrayList)sqlSession.selectList("ProfessorMyPageMapper.selectProfSchdule", map);
	}

	public ArrayList<Consulting> selectApply(Professor professor) 
	{
		return (ArrayList)sqlSession.selectList("ProfessorMyPageMapper.selectConsulting", professor);
	}

	public int approveConsulting(Consulting consulting) 
	{
		return sqlSession.update("ProfessorMyPageMapper.approveConsulting", consulting);
	}

	public int rejectConsulting(Consulting consulting) 
	{
		return sqlSession.update("ProfessorMyPageMapper.rejectConsulting", consulting);
	}

	public int completeConsulting(Consulting consulting) 
	{
		return sqlSession.update("ProfessorMyPageMapper.completeConsulting", consulting);
	}

	public int changeConsulting(Consulting consulting) 
	{
		return sqlSession.update("ProfessorMyPageMapper.changeConsulting", consulting);
	}

	public int insertProfImage(Image i) 
	{
		return sqlSession.insert("ProfessorMyPageMapper.insertProfImage", i);
	}
	
	public ArrayList<Image> selectProfImage(Professor professor) 
	{
		return (ArrayList)sqlSession.selectList("ProfessorMyPageMapper.selectProfImage", professor);
	}
}