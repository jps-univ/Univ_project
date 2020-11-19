package com.kh.univ.stmanagement.model.service;

import java.util.ArrayList;
import java.util.Map;

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
	public ArrayList<StudentManagement> selectList(Map map) {
		return smDao.selectList(map);
	}

	@Override
	public ArrayList<StudentManagement> selectDetailList(Map map) {
		return smDao.selectDetailList(map);
	}

	@Override
	public ArrayList<StudentManagement> gradeView() {
		return smDao.gradeView();
	}

	@Override
	public int insertGrade(GradeA g) {
		return smDao.insertGrade(g);
	}

//	@Override
//	public ArrayList<StudentManagement> selectListDetailList2(Map map) {
//		return smDao.selectDetailList2(map);
//	}
	
	
	
}
