package com.kh.univ.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdProfessorController {

	@RequestMapping("professor_Register.do")
	public String professorRegister() {
		return "admin/ad_professor_register";
	}
	
	@RequestMapping("professor_Modify.do")
	public String professorModify() {
		return "admin/ad_professor_modify";
	}
}
