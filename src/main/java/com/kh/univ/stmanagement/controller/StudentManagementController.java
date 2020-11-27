package com.kh.univ.stmanagement.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.member.model.vo.Professor;
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
		
		int profId     = professor.getProfId();
		String classId = stdM.getClassId();
		int classSeq   = stdM.getClassSeq();
		
		Map map = new HashMap();
		map.put("profId", profId);
		map.put("classId", classId);
		map.put("classSeq", classSeq);
		
		ArrayList<StudentManagement> list = smService.selectList(map);
		
//		System.out.println(map);
		
		mv.addObject("list", list);
		mv.setViewName("studentManagement/studentView");
//		System.out.println("처음페이지"+list);
//		if(classId != null) {
//			
//			ArrayList<StudentManagement> list2 = smService.selectListDetailList2(map);
//			
//			mv.setViewName("studentManagement/studentDetailView");
//			System.out.println("디테일페이지"+list2);
//			return mv;
//		}
		return mv;
	}
	
	@RequestMapping("stListDetail.do")
	public ModelAndView StudentDetailView(ModelAndView mv, Model model, HttpSession session, StudentManagement stdM) {
		System.out.println("받아오기"+stdM);
		Professor professor = (Professor)session.getAttribute("loginUser");
		
		int profId = professor.getProfId();
		String classId   = stdM.getClassId();
		String className = stdM.getClassName();
		int classSeq     = stdM.getClassSeq();
		
		Map map = new HashMap();
		map.put("profId", profId);
		map.put("classId", classId);
		map.put("className", className);
		map.put("classSeq", classSeq);
		
		ArrayList<StudentManagement> list = smService.selectDetailList(map);
		System.out.println("디비에서 가져오나요?"+list);
		System.out.println(map);
		
		mv.addObject("list", list);
		mv.setViewName("studentManagement/studentDetailView");
		System.out.println("디테일페이지"+list);
		return mv;
	}
	
	@RequestMapping("attendance.do")
	public String Attendance() {
		return "studentManagement/attendance";
	}
	
	@RequestMapping("stGrade.do")
		public ModelAndView StudentGrade(ModelAndView mv, HttpSession session, GradeA g) {
		Professor professor = (Professor)session.getAttribute("loginUser");
		
		int profId        = professor.getProfId();
		String classId    = g.getClassId();
		String className  = g.getClassName();
		int classSeq      = g.getClassSeq();
		int stdId         = g.getStdId();
		String gradePoint = g.getGradePoint();
		int gradeNo       = g.getGradeNo();
		
		Map map = new HashMap();
		map.put("profId", profId);
		map.put("classId", classId);
		map.put("className", className);
		map.put("classSeq", classSeq);
		map.put("stdId", stdId);
		map.put("gradeNo", gradeNo);
		map.put("gradePoint", gradePoint);
		
		ArrayList<GradeA> list = smService.gradeView(map);
			
			mv.addObject("list", list);
			mv.addObject("map", map);
			mv.setViewName("studentManagement/gradeManagement");
			
//			session.setAttribute("loginUser", map);
			return mv;
	}
	
//	@RequestMapping("gradeinsert.do")
//	public String boardInsertView(GradeA g,HttpServletRequest request) {
//		
//		System.out.println(g);
//		int result = smService.insertGrade(g);
//		
//		System.out.println("result : " + result);
//		
//		if(result > 0) {
//			return "redirect:stGrade.do";
//		}else {
//			return "common/errorPage";
//		}
//	}
	
//	
	@RequestMapping("gradeinsert.do")
	public String boardInsertView(GradeA g, String[] gradeArry, String classId) {
		
		System.out.println(classId);
	for(int i =0; i<gradeArry.length; i++) {
		g.setStdId(Integer.parseInt(gradeArry[i]));
		g.setGradePoint(gradeArry[i+1]);
		i=i+1;
		int result = smService.insertGrade(g);
		System.out.println(g);
		
	}
		
		
		
		
//		Professor professor = (Professor) session.getAttribute("loginUser");
//		System.out.println( "주호"+g);
//		
//		int profId        = professor.getProfId();
//		int classSeq      = g.getClassSeq();
//		int stdId     = g.getStdId();
//		String gradePoint = g.getGradePoint();
//		int gradeNo       = g.getGradeNo();
//		String classId  = g.getClassId();
//		
//		Map map = new HashMap();
//		map.put("profId", profId);
//		map.put("stdId", stdId);
//		map.put("gradePoint", gradePoint);
//		map.put("classSeq", classSeq);
//		map.put("gradeNo", gradeNo);
//		map.put("classId", classId);
//		
		
		//int result = smService.insertGrade(map);
		
		
//		if(result > 0) {
//			return "redirect:stGrade.do";
//		}else {
//			return "common/errorPage";
//		}
		return null;
	}
	
	
	
//	@ResponseBody
//	@RequestMapping(value="gradeinsert.do", method=RequestMethod.POST)
//	public String boardInsertView(GradeA g,HttpSession session) {
//		Professor professor = (Professor)session.getAttribute("loginUser");
//		
//		g.setProfId(professor.getProfId());
//		
//		int result = smService.insertGrade(g);
//		
//		System.out.println(g);
//		
//		System.out.println("result : " + result);
//		
//		if(result > 0) {
//			
//			g.setClassCode(classCode);
//			return "완";
//		}else {
//			return "실";
//		}
//		
//	}
}
