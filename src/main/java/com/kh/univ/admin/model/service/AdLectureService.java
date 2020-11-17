package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import com.kh.univ.admin.model.vo.AdCollege;
import com.kh.univ.admin.model.vo.AdDepartment;
import com.kh.univ.admin.model.vo.AdProfessor;
import com.kh.univ.lecture.model.vo.Lecture;

public interface AdLectureService {

	int insertLecture(Lecture lecture);

	ArrayList<AdCollege> adCollegeSelect();

	ArrayList<AdDepartment> adDepartmentSelect(String collegeCode);

	ArrayList<AdProfessor> adProfessorSelect(String departmentCode);

	ArrayList<Lecture> selectAdLectureList();

}
