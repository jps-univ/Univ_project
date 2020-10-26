package com.kh.univ.stmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentManagementController {

	@RequestMapping("stList.do")
	public String StudentView() {
		return "studentManagement/studentView";
	}
	
	@RequestMapping("stListDetail.do")
	public String StudentDetailView() {
		return "studentManagement/studentDetailView";
	}
	
	@RequestMapping("attendance.do")
	public String Attendance() {
		return "studentManagement/attendance";
	}
	
	@RequestMapping("stGrade.do")
	public String StudentGrade() {
		return "studentManagement/gradeManagement";
	}
	
}
