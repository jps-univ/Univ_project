package com.kh.univ.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.mypage.dao.StudentDao;

@Service("msService")
public class StudentServiceImpl implements StudentService 
{
	@Autowired
	private StudentDao msDao;
	
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
	public int checkStdPwd(Student student)
	{
		return msDao.checkStdPwd(student);
	}
}