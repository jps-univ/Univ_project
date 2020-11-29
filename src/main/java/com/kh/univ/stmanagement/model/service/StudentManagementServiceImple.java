package com.kh.univ.stmanagement.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.stmanagement.model.dao.StudentManagementDao;
import com.kh.univ.stmanagement.model.vo.Attendance;
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
	public ArrayList<GradeA> gradeView(Map map) {
		return smDao.gradeView(map);
	}

	@Override
	public int insertGrade(GradeA g) {
		return smDao.insertGrade(g);
	}
//	@Override
//	public int insertGrade(Map map) {
//		return smDao.insertGrade(map);
//	}

	@Override
	public ArrayList<Attendance> attendanceView(Map map) {
		return smDao.attendanceView(map);
	}

	@Override
	public int insertAtt(Attendance att) {
		return smDao.attendanceInsert(att);
	}

//	@Override
//	public ArrayList<StudentManagement> selectListDetailList2(Map map) {
//		return smDao.selectDetailList2(map);
//	}
	
	
	
}
