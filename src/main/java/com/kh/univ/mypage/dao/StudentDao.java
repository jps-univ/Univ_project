package com.kh.univ.mypage.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.Student;

@Repository("msDao")
public class StudentDao 
{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int changeStdPersonalInfo(Student student) 
	{
		return sqlSession.update("studentMyPageMapper.changeStdPersonalInfo", student);
	}

	public int changeStdAgreeInfo(Student student) 
	{
		return sqlSession.update("studentMyPageMapper.changeStdAgreeInfo", student);
	}
	
	public int checkStdPwd(Student student) 
	{
		return sqlSession.selectOne("studentMyPageMapper.checkStdPwd", student);
	}
}