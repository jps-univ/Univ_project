package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import com.kh.univ.admin.model.vo.AdClassPlan;
import com.kh.univ.admin.model.vo.AdClassTime;
import com.kh.univ.admin.model.vo.AdCollege;
import com.kh.univ.admin.model.vo.AdDepartment;
import com.kh.univ.admin.model.vo.AdLecture;
import com.kh.univ.admin.model.vo.AdProfessor;
import com.kh.univ.lecture.model.vo.Lecture;

public interface AdLectureService {


	ArrayList<AdCollege> adCollegeSelect();

	ArrayList<AdDepartment> adDepartmentSelect(String collegeCode);

	ArrayList<AdProfessor> adProfessorSelect(String departmentCode);

	ArrayList<AdLecture> selectAdLectureList();

	int adInsertLecture(AdLecture adLecture);

	int adInsertClassTime(AdClassTime cTime);

	AdLecture findLecture(AdLecture adLecture);

	AdLecture lectureSelectOne(int classSeq);

	ArrayList<AdLecture> lectureApprove();

	ArrayList<AdClassPlan> adClassPlanSelect(int classSeq);

	int lectureUpdate(AdLecture lecture);

}
