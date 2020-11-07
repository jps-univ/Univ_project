package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.admin.model.dao.AdStudentDao;
import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Student;

@Service("AdStudentService")
public class AdStudentServiceImpl implements AdStudentService{
	
	@Autowired AdStudentDao adStudentDao;
	
	@Override
	public ArrayList<College> selectList() {
		// TODO Auto-generated method stub
		return adStudentDao.selectList();
	}

	@Override
	public Student selectOne(int stdId) {
		// TODO Auto-generated method stub
		return adStudentDao.selectOne(stdId);
	}

	@Override
	public int selectOneUpdate(Student std) {
		// TODO Auto-generated method stub
		return adStudentDao.selectOneUpdate(std);
	}

}
