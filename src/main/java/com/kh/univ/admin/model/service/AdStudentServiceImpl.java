package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.admin.model.dao.AdStudentDao;
import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Student;

@Service("AdStudentService")
public class AdStudentServiceImpl implements AdStudentService{
	
	@Autowired 
	private AdStudentDao adStudentDao;
	
	@Override
	public ArrayList<Student> selectList() {
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

	@Override
	public ArrayList<College> selectDept() {
		// TODO Auto-generated method stub
		return adStudentDao.selectDept();
	}



	@Override
	public ArrayList<Department> deptCheck(String collegeCode) {
		
		return adStudentDao.deptCheck(collegeCode);
	}

	@Override
	public int insertStudent(Student std) {
		// TODO Auto-generated method stub
		return adStudentDao.insertOne(std);
	}



	@Override
	public ArrayList<Student> collegeSearch(String collegeCode, String departmentCode, int searchSemester) {
		// TODO Auto-generated method stub
		return adStudentDao.searchCollege(collegeCode,departmentCode,searchSemester);
	}

}
