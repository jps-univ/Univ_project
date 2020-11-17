package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.admin.model.dao.AdLectureDao;
import com.kh.univ.admin.model.vo.AdCollege;
import com.kh.univ.admin.model.vo.AdDepartment;
import com.kh.univ.admin.model.vo.AdProfessor;
import com.kh.univ.lecture.model.vo.Lecture;

@Service("AdLectureService")
public class AdLectureServiceImpl implements AdLectureService{

	@Autowired 
	private AdLectureDao adLectureDao;

	@Override
	public int insertLecture(Lecture lecture) {
		// TODO Auto-generated method stub
		return adLectureDao.insertLecture(lecture);
	}

	@Override
	public ArrayList<AdCollege> adCollegeSelect() {
		// TODO Auto-generated method stub
		return adLectureDao.adCollegeSelect();
	}

	@Override
	public ArrayList<AdDepartment> adDepartmentSelect(String collegeCode) {
		// TODO Auto-generated method stub
		return adLectureDao.adDepartmentSelect(collegeCode);
	}

	@Override
	public ArrayList<AdProfessor> adProfessorSelect(String departmentCode) {
		// TODO Auto-generated method stub
		return adLectureDao.adProfessorSelect(departmentCode);
	}

	@Override
	public ArrayList<Lecture> selectAdLectureList() {
		// TODO Auto-generated method stub
		return adLectureDao.selectAdLectureList();
	}
}
