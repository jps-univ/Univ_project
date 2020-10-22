package com.kh.univ.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController 
{
	@RequestMapping("student_info.mp")
    public String studentInfo()
	{
        return "myPage/studentMyPage";
    }
}