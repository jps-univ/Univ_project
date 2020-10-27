package com.kh.univ.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdProfessorController {

	/**
	 * 1.교수 정보 등록(관리자)
	 * @return
	 */
	@RequestMapping("professor_Register.do")
	public String professorRegister() {
		return "admin/ad_professor_register";
	}
	
	/**
	 * 2. 교수 정보 수정(관리자)
	 * @return
	 */
	@RequestMapping("professor_Modify.do")
	public String professorModify() {
		return "admin/ad_professor_modify";
	}
}
