package com.kh.univ.register.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.register.model.dao.RegisterDao;
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
	public int leaveApply(Register register) {
		
		return rDao.leaveApply(register);
	}

}
