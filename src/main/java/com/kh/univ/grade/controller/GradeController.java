package com.kh.univ.grade.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.grade.model.service.GradeService;
import com.kh.univ.grade.model.vo.StudentGrade;
import com.kh.univ.member.model.vo.Student;



@Controller
public class GradeController {
	
	@Autowired
	private GradeService gService;
	
	/**
	 * 1. 학기별 성적 조회 페이지
	 * @return
	 */
	@RequestMapping("lookUpGrade.do")
	public String lookUpGrade() {
		
		return "grade/lookUpGrade";
	}
	
	/**
	 * 2. 졸업사정표 페이지
	 * @return
	 */
	@RequestMapping("graduationRequired.do")
	public String graduationRequired() {
		return "grade/graduationRequired";
	}
	
	 
	/**
	 * 3. 성적증명서 페이지
	 * @return
	 */
	@RequestMapping("gradeCertificate.do")
	public ModelAndView gradeCertificate(HttpSession session, ModelAndView mv) {
		
		Student std = (Student) session.getAttribute("loginUser");
		int id = std.getStdId();
		
		
		ArrayList<StudentGrade> list = gService.selectList(std.getStdId());
		mv.addObject("list", list);
		mv.addObject("id",id);
		
		
		
		mv.setViewName("grade/gradeCertificate");
		
		
		return mv;
	}
}
