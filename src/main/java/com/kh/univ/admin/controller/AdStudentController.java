package com.kh.univ.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdStudentController {
	
	/**
	 * 1. 학생 정보 등록(관리자)
	 * @return
	 */
	@RequestMapping("student_Register.do")
	public String studentRegister() {
		return "admin/ad_student_register";
	}
	
	/**
	 * 2. 학생 정보 수정(관리자)
	 * @return
	 */
	@RequestMapping("student_Modify.do")
    public String StudentModify()
	{
        return "admin/ad_student_modify";
    }
}
