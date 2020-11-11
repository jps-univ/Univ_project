package com.kh.univ.mypage.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.mypage.model.dao.StudentMyPageDao;

@Service("msService")
public class StudentMyPageServiceImpl implements StudentMyPageService 
{
	@Autowired
	private StudentMyPageDao msDao;
	
	@Override
	public int changeStdPersonalInfo(Student student) 
	{
		return msDao.changeStdPersonalInfo(student);
	}

	@Override
	public int changeStdAgreeInfo(Student student) 
	{
		return msDao.changeStdAgreeInfo(student);
	}
	
	@Override
	public Student checkStdPwd(Student student)
	{
		return msDao.checkStdPwd(student);
	}

	@Override
	public int changeStdPassword(Student student) 
	{
		return msDao.changeStdPwd(student);
	}

	@Override
	public Student selectStdStatus(Student student) 
	{
		return msDao.selectStdStatus(student);
	}

	@Override
	public Student selectStdDepartment(Student student) 
	{
		return msDao.selectStdDepartment(student);
	}

	@Override
	public ArrayList<Lecture> selectStdSchdule(Map map)
	{
		return msDao.selectStdSchdule(map);
	}

	@Override
	public ArrayList<Professor> selectProfessor(Map map) 
	{
		return msDao.selectProfessor(map);
	}
}