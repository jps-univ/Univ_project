package com.kh.univ.register.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.register.model.dao.RegisterDao;
import com.kh.univ.register.model.vo.InsertRegister;
import com.kh.univ.register.model.vo.Register;

@Service("rService")
public class RegisterServiceImpl implements RegisterService{

	@Autowired
	private RegisterDao rDao;
	
	// 휴학페이지
	@Override
	public Register selectLeave(Student studentL) {
	
		return rDao.selectLeave(studentL);
	}

	// 휴학신청
	@Override
	public int leaveApply(InsertRegister register) {
		
		return rDao.leaveApply(register);
	}

	// 복학페이지
	@Override
	public Register selectReturning(Student studentR) {
	
		return rDao.selectReturning(studentR);
	}

	// 졸업페이지
	@Override
	public Register selectGraduation(Student studentG) {
		
		return rDao.selectGraduation(studentG);
	}

	// 복학정보 insert
	@Override
	public int updateReturning(InsertRegister insertRegister) {

		return rDao.updateReturning(insertRegister);
	}

	// 졸업정보 insert
	@Override
	public int updateGraduation(InsertRegister insertRegister) {

		return rDao.updateGraduation(insertRegister);
	}

}
