package com.kh.univ.register.model.service;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.register.model.vo.InsertRegister;
import com.kh.univ.register.model.vo.Register;

public interface RegisterService {

	// 휴학페이지
	Register selectLeave(Student studentL);

	// 휴학신청
	int leaveApply(InsertRegister register);

	// 복학페이지
	Register selectReturning(Student studentR);

	// 졸업페이지
	Register selectGraduation(Student studentG);

	// 복학정보 insert
	int updateReturning(InsertRegister insertRegister);

	// 졸업정보 insert
	int updateGraduation(InsertRegister insertRegister);

	int insertGraduation(InsertRegister insertRegister);

	int deleteStatus(Student studentL);

}
