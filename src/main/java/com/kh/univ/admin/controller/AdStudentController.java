package com.kh.univ.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdStudentController {
	
	@RequestMapping("student_Register.do")
	public String studentRegister() {
		return "admin/ad_student_register";
	}
	
	@RequestMapping("student_Modify.do")
    public String StudentModify()
	{
        return "admin/ad_student_modify";
    }
}
