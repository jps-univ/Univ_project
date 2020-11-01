package com.kh.univ.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.mypage.model.service.StudentMyPageService;

@Controller
public class StudentMyPageController 
{
	@Autowired
	private StudentMyPageService msService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
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
	public String ChangeStudentInfo(Student student, Model model, HttpSession session)
	{
		System.out.println(student);
		Student newStudent = (Student)session.getAttribute("loginUser");
		System.out.println(newStudent);
		
		int result = msService.changeStdPersonalInfo(student);
		
		if(result > 0)
		{			
			newStudent.setStdTel(student.getStdTel());
			newStudent.setStdPhone(student.getStdPhone());
			newStudent.setStdEmail(student.getStdEmail());
			newStudent.setStdAddress(student.getStdAddress());
			newStudent.setStdAddressDetail(student.getStdAddressDetail());
			newStudent.setStdBank(student.getStdBank());
			newStudent.setStdAccount(student.getStdAccount());
			newStudent.setStdAccountHolder(student.getStdAccountHolder());
			
			session.setAttribute("loginUser", newStudent);
			
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
		Student sessionStudent = (Student)session.getAttribute("loginUser");

		int result = msService.changeStdAgreeInfo(student);
		
		if(result > 0)
		{
			sessionStudent.setStdSmsAgree(student.getStdSmsAgree());
			sessionStudent.setStdEmailAgree(student.getStdEmailAgree());
			
			session.setAttribute("loginUser", sessionStudent);
			
			return "ok";
		}
		else
		{
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping("checkStudentPwd.do")
	public String CheckStudentPwd(Student student, Model model)
	{
		System.out.println(student);
		
		Student resultStudent = msService.checkStdPwd(student);
		
		if(bcryptPasswordEncoder.matches(student.getStdPwd(), resultStudent.getStdPwd()))
		{
			return "ok";
		} 
		else 
		{
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping("changeStudentPwd.do")
	public String ChangeStudentPwd(Student student, Model model)
	{
		System.out.println(student);
		
		student.setStdPwd(bcryptPasswordEncoder.encode(student.getStdPwd()));
		
		int result = msService.changeStdPassword(student);
		
		if(result > 0)
		{			
			return "ok";
		}
		else
		{
			return "fail";
		}
	}
}