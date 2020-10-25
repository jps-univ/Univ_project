package com.kh.univ.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.member.model.dao.StudentLoginDao;
import com.kh.univ.member.model.vo.Student;

@Service
public class StudentLoginSerivceImpl implements StudentLoginSevice {
	
	@Autowired
	StudentLoginDao sDao;
	
	@Override
	public Student login(Student student) {
		return sDao.login(student);
	}

}
