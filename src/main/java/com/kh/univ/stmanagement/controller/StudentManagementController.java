package com.kh.univ.stmanagement.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.stmanagement.model.service.StudentManagementService;
import com.kh.univ.stmanagement.model.vo.GradeA;
import com.kh.univ.stmanagement.model.vo.StudentManagement;

@Controller
public class StudentManagementController {

	@Autowired
	private StudentManagementService smService;
	
	@RequestMapping("stList.do")
	public ModelAndView StudentView(ModelAndView mv, Model model, HttpSession session, StudentManagement stdM) {
		
		Professor professor = (Professor)session.getAttribute("loginUser");
		
		int profId = professor.getProfId();
		String classId = stdM.getClassId();
		
		Map map = new HashMap();
		map.put("profId", profId);
		map.put("classId", classId);
		
		ArrayList<StudentManagement> list = smService.selectList(map);
		
		mv.addObject("list", list);
		mv.setViewName("studentManagement/studentView");
		return mv;
	}
	
	@RequestMapping("stListDetail.do")
	public ModelAndView StudentDetailView(ModelAndView mv, Model model, HttpSession session, StudentManagement stdM) {
		
		Professor professor = (Professor)session.getAttribute("loginUser");
		
		int profId = professor.getProfId();
		String classId = stdM.getClassId();
		
		Map map = new HashMap();
		map.put("profId", profId);
		map.put("classId", classId);
		ArrayList<StudentManagement> list = smService.selectDetailList(map);
		
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
	public String boardInsertView(GradeA g,HttpServletRequest request) {
		
		System.out.println(g);
		int result = smService.insertGrade(g);
		
		if(result > 0) {
			return "redirect:stGrade.do";
		}else {
			return "common/errorPage";
		}
	}
	
}
