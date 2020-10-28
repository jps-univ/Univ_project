package com.kh.univ.stmanagement.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.stmanagement.model.service.StudentManagementService;
import com.kh.univ.stmanagement.model.vo.StudentManagement;

@Controller
public class StudentManagementController {

	@Autowired
	private StudentManagementService smService;
	
	@RequestMapping("stList.do")
	public ModelAndView StudentView(ModelAndView mv) {
		
		ArrayList<StudentManagement> list = smService.selectList();
		
		mv.addObject("list", list);
		mv.setViewName("studentManagement/studentView");
		return mv;
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
