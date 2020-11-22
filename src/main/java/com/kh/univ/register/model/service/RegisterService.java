package com.kh.univ.register.model.service;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.register.model.vo.Register;

public interface RegisterService {

	// 휴학페이지
	Register selectLeave(Student studentL);

	// 휴학신청
	int leaveApply(Register register);

}
