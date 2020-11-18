package com.kh.univ.stmanagement.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.stmanagement.model.dao.StudentManagementDao;
import com.kh.univ.stmanagement.model.vo.GradeA;
import com.kh.univ.stmanagement.model.vo.StudentManagement;

@Service("smService")
public class StudentManagementServiceImple implements StudentManagementService {

	@Autowired
	private StudentManagementDao smDao;

	@Override
	public ArrayList<StudentManagement> selectList(int profId) {
		return smDao.selectList(profId);
	}

	@Override
	public ArrayList<StudentManagement> selectDetailList() {
		return smDao.selectDetailList();
	}

	@Override
	public ArrayList<StudentManagement> gradeView() {
		return smDao.gradeView();
	}

	@Override
	public int insertGrade(GradeA g) {
		return smDao.insertGrade(g);
	}
	
	
	
}
