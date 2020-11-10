package com.kh.univ.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.admin.model.service.AdProfessorService;
import com.kh.univ.member.model.vo.Professor;

@Controller
public class AdProfessorController {

	@Autowired
	private AdProfessorService adProfessorService;
	/**
	 * 1.교수 정보 등록(관리자)
	 * @return
	 */
	@RequestMapping("professor_Register.do")
	public String professorRegister(ModelAndView mv) {
		ArrayList<Professor> professor = adProfessorService.selectList();
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
