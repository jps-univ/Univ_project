package com.kh.univ.stmanagement.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.stmanagement.model.service.StudentManagementService;
import com.kh.univ.stmanagement.model.vo.Grade;
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
	public ModelAndView StudentDetailView(ModelAndView mv) {
		
		ArrayList<StudentManagement> list = smService.selectDetailList();
		
		mv.addObject("list", list);
		mv.setViewName("studentManagement/studentDetailView");
		return mv;
	}
	
	@RequestMapping("attendance.do")
	public String Attendance() {
		return "studentManagement/attendance";
	}
	
	@RequestMapping("stGrade.do")
		public ModelAndView StudentGrade(ModelAndView mv) {
			
			ArrayList<StudentManagement> list = smService.gradeView();
			
			mv.addObject("list", list);
			mv.setViewName("studentManagement/gradeManagement");
			return mv;
	}
	
	@RequestMapping("gradeinsert.do")
	public String boardInsertView(Grade g,HttpServletRequest request) {
		
		int result = smService.insertGrade(g);
		
		if(result > 0) {
			return "redirect:stGrade.do";
		}else {
			return "common/errorPage";
		}
	}
	
}
