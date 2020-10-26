package com.kh.univ.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdLectureController {

	
	@RequestMapping("lecture_Register.do")
	public String lectureRegister() {
		return "admin/ad_lecture_register";
	}
	
	@RequestMapping("lecture_Modify.do")
	public String lectureModify() {
		return "admin/ad_lecture_modify";
	}
	
	@RequestMapping("lecture_Rest.do")
	public String lectureRest() {
		return "admin/ad_lecture_rest";
	}
}
