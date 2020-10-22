package com.kh.univ.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController 
{
	@RequestMapping("student_info.do")
    public String StudentInfo()
	{
        return "myPage/studentInfo";
    }
	
	@RequestMapping("student_info.do")
	public String StudentPassword()
	{
		return "myPage/studentPassword";
	}
}