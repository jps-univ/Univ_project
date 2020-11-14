package com.kh.univ.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.admin.model.service.AdLectureService;
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
	public String lectureRegister(Lecture lecture) {
		
		int result = adLectureService.insertLecture(lecture);
		return "admin/ad_lecture_register";
	}
	
	/**
	 * 2. 강의 수정 (관리자)
	 * @return
	 */
	@RequestMapping("lecture_Modify.do")
	public ModelAndView lectureModify(ModelAndView mv) {
		
		
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
