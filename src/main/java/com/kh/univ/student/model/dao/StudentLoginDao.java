package com.kh.univ.student.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.student.model.vo.Student;

@Repository("sDao")
public class StudentLoginDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public Student login(Student student) {
		return (Student)sqlSession.selectOne("StudentMapper.loginStudent",student);
	}

}
