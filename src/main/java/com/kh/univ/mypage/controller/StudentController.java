package com.kh.univ.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.mypage.service.StudentService;

@Controller
public class StudentController 
{
	@Autowired
	private StudentService msService;
	
	@RequestMapping("student_info.do")
    public String StudentInfo()
	{
        return "myPage/studentInfo";
    }
	
	@RequestMapping("student_password.do")
	public String StudentPassword()
	{
		return "myPage/studentPassword";
	}
	
	@RequestMapping("student_schedule.do")
	public String StudentSchedule()
	{
		return "myPage/studentSchedule";
	}
	
	@RequestMapping("student_consulting.do")
	public String StudentConsulting()
	{
		return "myPage/studentConsulting";
	}

	@ResponseBody
	@RequestMapping("changeStudentInfo.do")
	public String ChangeStudentInfo(Student student, Model model)
	{
		System.out.println(student);
		
		int result = msService.changeStdPersonalInfo(student);
		
		if(result > 0)
		{			
			return "ok";
		}
		else
		{
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping("changeAgreeInfo.do")
	public String changeAgreeInfo(Student student, Model model, HttpSession session)
	{
		System.out.println(student);
		String sms = (String)session.getAttribute("loginUser.stdSmsAgree");
		System.out.println("변경 전 : " + sms);
		int result = msService.changeStdAgreeInfo(student);
		
		
		if(result > 0)
		{
			session.setAttribute("loginUser.stdSmsAgree", student.getStdSmsAgree());
			System.out.println("변경 후 : " + sms);
			session.setAttribute("loginUser.stdEmailAgree", student.getStdEmailAgree());
			return "ok";
		}
		else
		{
			return "fail";
		}
	}
	
	@RequestMapping("checkStudentPwd.do")
	public String CheckStudentPwd(Student student, Model model)
	{
		System.out.println(student);
		
		int result = msService.checkStdPwd(student);
		return "ok";
	}
}