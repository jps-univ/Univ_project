package com.kh.univ.mypage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.Student;

@Repository("msDao")
public class StudentMyPageDao 
{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int changeStdPersonalInfo(Student student) 
	{
		return sqlSession.update("StudentMyPageMapper.changeStdPersonalInfo", student);
	}

	public int changeStdAgreeInfo(Student student) 
	{
		return sqlSession.update("StudentMyPageMapper.changeStdAgreeInfo", student);
	}
	
	public Student checkStdPwd(Student student) 
	{
		return (Student)sqlSession.selectOne("StudentMyPageMapper.checkStdPwd", student);
	}

	public int changeStdPwd(Student student) 
	{
		return sqlSession.update("StudentMyPageMapper.changeStdPassword", student);
	}
}