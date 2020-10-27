package com.kh.univ.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdLectureController {

	
	/**
	 * 1. 강의 등록(관리자)
	 * @return
	 */
	@RequestMapping("lecture_Register.do")
	public String lectureRegister() {
		return "admin/ad_lecture_register";
	}
	
	/**
	 * 2. 강의 수정 (관리자)
	 * @return
	 */
	@RequestMapping("lecture_Modify.do")
	public String lectureModify() {
		return "admin/ad_lecture_modify";
	}
	
	/**
	 * 3. 휴강 관리(관리자)
	 * @return
	 */
	@RequestMapping("lecture_Rest.do")
	public String lectureRest() {
		return "admin/ad_lecture_rest";
	}
}
