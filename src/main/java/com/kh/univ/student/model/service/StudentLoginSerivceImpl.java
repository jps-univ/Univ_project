package com.kh.univ.student.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.student.model.dao.StudentLoginDao;
import com.kh.univ.student.model.vo.Student;

@Service
public class StudentLoginSerivceImpl implements StudentLoginSevice {
	
	@Autowired
	StudentLoginDao sDao;
	
	@Override
	public Student login(Student student) {
		return sDao.login(student);
	}

}
