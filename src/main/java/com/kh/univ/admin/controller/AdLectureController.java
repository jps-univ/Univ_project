package com.kh.univ.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.admin.model.service.AdLectureService;
import com.kh.univ.admin.model.vo.AdCollege;
import com.kh.univ.admin.model.vo.AdDepartment;
import com.kh.univ.admin.model.vo.AdProfessor;
import com.kh.univ.lecture.model.vo.Lecture;


@Controller
public class AdLectureController {

	@Autowired
	private AdLectureService adLectureService;
	/**
	 * 1. 강의 등록(관리자)
	 * @return
	 */
	@RequestMapping("lecture_Register.do")
	public ModelAndView lectureRegister(ModelAndView mv) {
		ArrayList<AdCollege> adCollegeSelect = adLectureService.adCollegeSelect();
		mv.addObject("adCollege", adCollegeSelect);
		mv.setViewName("admin/ad_lecture_register");
		//int result = adLectureService.insertLecture(lecture);
		return mv;
	}
	
	/**
	 * 1_2. 강의 등록에서 departmentCode Select
	 * @param CollegeCode
	 * @return
	 */
	@ResponseBody
	@RequestMapping("admin_Lecture_Department.do")
	public ArrayList<AdDepartment> selectAdDepartment(String CollegeCode){
		ArrayList<AdDepartment> selectAdDepartment = adLectureService.adDepartmentSelect(CollegeCode);
		return selectAdDepartment;
	}
	/**
	 * 1_3. 강의 등록에서 professorName Select
	 * @param departmentCode
	 * @return
	 */
	@ResponseBody
	@RequestMapping("admin_Lecture_Professor.do")
	public ArrayList<AdProfessor> selectAdProfessorName(String departmentCode){
		ArrayList<AdProfessor> selectAdProfessorName = adLectureService.adProfessorSelect(departmentCode);
		return selectAdProfessorName;
	}
	
	@RequestMapping("admin_Lecture_insert.do")
	public String insertProfessorOne() {
		String test= "월1/화2/수3";
		
		return null;
	}
	
	/**
	 * 2. 강의 수정 (관리자)
	 * @return
	 */
	@RequestMapping("lecture_Modify.do")
	public ModelAndView lectureModify(ModelAndView mv) {
		
		ArrayList<Lecture> selectAdLectureList = adLectureService.selectAdLectureList();
		
		mv.setViewName("admin/ad_lecture_modify");
		return mv;
	}
	
	/**
	 * 3. 휴강 관리(관리자)
	 * @return
	 */
	@RequestMapping("lecture_Rest.do")
	public String lectureRest() {
		return "admin/ad_lecture_rest";
	}
	
	@RequestMapping("lecture_Approve.do")
	public String lectureApprove() {
		return "admin/ad_lecture_approve";
	}
}
