package com.kh.univ.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.Student;

@Repository("sDao")
public class StudentLoginDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public Student login(Student student) {
		return (Student)sqlSession.selectOne("StudentMapper.loginStudent",student);
	}

//	public List<Student> findId(Student std) {
//		return sqlSession.selectList("StudentMapper.findId",std);
//	}

	public Student findByNameAndEmail(Student student) {
		return sqlSession.selectOne("StudentMapper.findByNameAndEmail",student);
	}

	public Student findByIdAndNameAndEmail(Student student) {
		return sqlSession.selectOne("StudentMapper.findByIdAndNameAndEmail",student);
	}

	public int updateById(Student student) {
		return sqlSession.update("StudentMapper.updateById",student);
	}

}
