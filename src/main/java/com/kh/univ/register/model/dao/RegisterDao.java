package com.kh.univ.register.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.register.model.vo.InsertRegister;
import com.kh.univ.register.model.vo.Register;

@Repository("rDao")
public class RegisterDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 휴학페이지
	public Register selectLeave(Student studentL) {

		return sqlSession.selectOne("RegisterMapper.selectLeave", studentL);
	}

	// 휴학신청
	public int leaveApply(InsertRegister register) {
		
		return sqlSession.insert("RegisterMapper.leaveApply", register);
	}

	// 복학페이지
	public Register selectReturning(Student studentR) {
		
		return sqlSession.selectOne("RegisterMapper.selectReturning", studentR);
	}

	// 졸업페이지
	public Register selectGraduation(Student studentG) {
	
		return sqlSession.selectOne("RegisterMapper.selectGraduation", studentG);
	}

	public int updateReturning(InsertRegister insertRegister) {
		// TODO Auto-generated method stub
		return sqlSession.update("RegisterMapper.updateReturning",insertRegister);
	}

}
