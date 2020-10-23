package com.kh.univ.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProfessorController 
{
	@RequestMapping("professor_info.do")
    public String ProfessorInfo()
	{
        return "myPage/professorInfo";
    }
	
	@RequestMapping("professor_password.do")
	public String ProfessorPassword()
	{
		return "myPage/professorPassword";
	}
	
	@RequestMapping("professor_schedule.do")
	public String ProfessorSchedule()
	{
		return "myPage/professorSchedule";
	}
	
	@RequestMapping("professor_consulting.do")
	public String ProfessorConsulting()
	{
		return "myPage/professorConsulting";
	}
}