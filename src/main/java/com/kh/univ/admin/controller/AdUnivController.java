package com.kh.univ.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdUnivController {

	/**
	 * 1. 학생 휴학 관리
	 * @return
	 */
	@RequestMapping("ad_student_rest.do")
	public String AdStudentRest() {
		return "admin/ad_student_rest";
	}
	
	/**
	 * 2. 학생 졸업 관리
	 * @return
	 */
	@RequestMapping("ad_student_graduate.do")
	public String AdStudentGraduate() {
		return "admin/ad_student_graduate";
	}
	
	/**
	 * 3. 학생 복학 관리
	 * @return
	 */
	@RequestMapping("ad_student_return.do")
	public String AdStudentReturn() {
		return "admin/ad_student_return";
	}
	
}
