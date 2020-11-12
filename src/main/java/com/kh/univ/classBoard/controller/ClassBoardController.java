package com.kh.univ.classBoard.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.univ.classBoard.service.ClassBoardService;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@Controller
public class ClassBoardController {

	@Autowired
	private ClassBoardService cbService;
	
	/**
	 * 1. 강의 선택창 하윙
	 * @return
	 */
	@RequestMapping("selectClass.do")
	public String selectClass(HttpSession session, Model model) {
		
		Object user = session.getAttribute("loginUser");
		
		if (user instanceof Student ) {
			user = (Student)session.getAttribute("loginUser");
		}else if (user instanceof Professor){
			user = (Professor)session.getAttribute("loginUser");
		}
		
//		System.out.println(user);
		
		session.setAttribute("user", user);
		
		return "classBoard/selectClass";
	}
	
	
	@RequestMapping("classList.do")
	public void classList(HttpSession session, HttpServletRequest request, HttpServletResponse response ) throws IOException {
		response.setContentType("application/json); charset=utf-8");
		
		
		Object user = session.getAttribute("loginUser");
		int userId = 0;
		int userYear =  Integer.parseInt(request.getParameter("userYear"));
		int userGrade = Integer.parseInt(request.getParameter("userGrade"));
		
		System.out.println(userYear);
		System.out.println(userGrade);
		
		if (user instanceof Student ) {
			user = (Student)session.getAttribute("loginUser");
			userId = ((Student) user).getStdId();
		}else if (user instanceof Professor){
			user = (Professor)session.getAttribute("loginUser");
			userId = ((Professor) user).getProfId();
		}
		
		System.out.println(userId);
		
		
		ArrayList<Lecture> lecList = cbService.classList(userId, userYear, userGrade);
//		System.out.println(lecList);
	
		JSONArray jArr = new JSONArray();
		for (Lecture l : lecList) {
			JSONObject jObj = new JSONObject();
			jObj.put("classCode", l.getClassCode());
			jObj.put("classSemester", l.getClassSemester());
			jObj.put("className", l.getClassName());
//			jObj.put("classPro", l.getClass);
			jObj.put("classGradeSize", l.getGradeSize());
			
			jArr.add(jObj);
		}
		PrintWriter out = response.getWriter();
		out.print(jArr);
		
		
	}
	
	
	
	
	/**
	 * 
	 * @return
	 */
	@RequestMapping("classBoardMain.do")
	public String classBoardMain() {
		return "classBoard/classBoardMain";
				
	}
	
	/**
	 * 2. 강의계획서 페이지
	 * @return
	 */
	@RequestMapping("classPlan.do")
	public String classPlan() {
		return "classBoard/classPlan";
	}

	
	
	/**
	 * 3. 공지사항 리스트 페이지
	 * @return
	 */
	@RequestMapping("noticeList.do")
	public String noticeList() {
		return "classBoard/noticeList";
	}
	
	
	
	/**
	 * 4. 과제 리스트 페이지
	 * @return
	 */
	@RequestMapping("assignmentList.do")
	public String assignmentList() {
		return "classBoard/assignmentList";
	}

	
	
	/**
	 * 4-1. 과제 디테일 페이지
	 * @return
	 */
	@RequestMapping("assignmentDetail.do")
	public String assignmentDetail() {
		return "classBoard/assignmentDetail";
	}
	
	
	/**
	 * 4-2. 학생 - 과제 제출 페이지
	 * @return
	 */
	@RequestMapping("assignmentEnroll.do")
	public String assignmentEnroll() {
		return "classBoard/assignmentEnroll_stu";
	}
	
	
	/**
	 * 4-2. 학생 - 과제 제출 페이지
	 * @return
	 */
	@RequestMapping("assignmentWrite.do")
	public String assignmentWrite() {
		return "classBoard/assignmentWrite_professor";
	}
	

	/**
	 * 5. 성적 이의 신청 리스트 페이지
	 * @return
	 */
	@RequestMapping("gradeObjectionList.do")
	public String gradeObjectionList() {
		return "classsBoard/gradeObjectionList";
	}
	
	
	
	
}
