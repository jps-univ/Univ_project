package com.kh.univ.classBoard.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@Controller
public class ClassBoardController {

	
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
		
		System.out.println(user);
		
		
		
		return "classBoard/selectClass";
	}
	
	
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
