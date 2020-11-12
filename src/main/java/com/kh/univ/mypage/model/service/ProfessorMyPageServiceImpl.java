package com.kh.univ.mypage.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.consulting.model.vo.Consulting;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.mypage.model.dao.ProfessorMyPageDao;

@Service("mpService")
public class ProfessorMyPageServiceImpl implements ProfessorMyPageService 
{
	@Autowired
	private ProfessorMyPageDao mpDao;
	
	@Override
	public Professor selectProfDepartment(Professor professor) 
	{
		return mpDao.selectProfDepartment(professor);
	}
	
	@Override
	public int changeProfPersonalInfo(Professor professor) 
	{
		return mpDao.changeProfPersonalInfo(professor);
	}

	@Override
	public int changeProfAgreeInfo(Professor professor) 
	{
		return mpDao.changeProfAgreeInfo(professor);
	}

	@Override
	public Professor checkProfPwd(Professor professor) 
	{
		return mpDao.checkProfPwd(professor);
	}

	@Override
	public int changeProfPwd(Professor professor) 
	{
		return mpDao.changeProfPwd(professor);
	}

	@Override
	public ArrayList<Lecture> selectProfSchdule(Map map) 
	{
		return mpDao.selectProfSchdule(map);
	}
}