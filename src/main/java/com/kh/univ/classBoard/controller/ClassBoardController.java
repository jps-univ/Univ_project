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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.classBoard.service.ClassBoardService;
import com.kh.univ.classBoard.vo.ClassNotice;
import com.kh.univ.classBoard.vo.PageInfo;
import com.kh.univ.common.Pagination;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@SessionAttributes({"classSeq","user","profName"})
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
			session.setAttribute("userId", userId);
		}else if (user instanceof Professor){
			user = (Professor)session.getAttribute("loginUser");
			userId = ((Professor) user).getProfId();
			session.setAttribute("userId", userId);
		}
		
		System.out.println(userId);
		
		
		ArrayList<Lecture> lecList = cbService.classList(userId, userYear, userGrade);
		System.out.println(lecList);
	
		JSONArray jArr = new JSONArray();
		
		
		for (Lecture l : lecList) {
			JSONObject jObj = new JSONObject();
			jObj.put("classSeq", l.getClassSeq());
			jObj.put("classCode", l.getClassCode());
			jObj.put("profId", l.getProfId());
			jObj.put("classSemester", l.getClassSemester());
			jObj.put("className", l.getClassName());
			jObj.put("proName", l.getProfName());
			jObj.put("classGradeSize", l.getGradeSize());

			jArr.add(jObj);
		}
		PrintWriter out = response.getWriter();
		out.print(jArr.toJSONString());

	}
	
	
	
	
	/**
	 * 
	 * @return
	 */
	@RequestMapping("classBoardMain.do")
	public ModelAndView classBoardMain(String profName, String classSeq, HttpSession session, ModelAndView mv) {
		
//		System.out.println("메인넘어갈때 seq : " + request.getParameter("classSeq"));
		session.setAttribute("classSeq", classSeq);
		session.setAttribute("profName", profName);
		
		
		mv.addObject("Seq", classSeq);

		mv.setViewName("classBoard/classBoardMain");
		
		return mv;
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
	@RequestMapping("cNoticeList.do")
	public ModelAndView noticeList(ModelAndView mv, @RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage
								,HttpSession session){

				
		// list array로 가져오기
		int classSeq = 0;
		if(session.getAttribute("classSeq") != null ) {
			classSeq = Integer.parseInt((String) session.getAttribute("classSeq"));
		}


		
		
		// paging처리
		int listCount = cbService.getNoticeListCount(classSeq);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<ClassNotice> cNotice = cbService.NoticeList(pi, classSeq);

		mv.addObject("NoticeList", cNotice);
		mv.addObject("pi",pi);
		System.out.println(cNotice);
		if(classSeq != 0) {
			mv.setViewName("classBoard/noticeList");
		}
		
		return mv;
	}
	
	
	
	
	/*
	 * 3. 공지사항
	 * notice detail페이지
	 * 
	 */
	@RequestMapping("cNoticeDetail.do")
	public ModelAndView noticeDetail(ModelAndView mv, HttpSession session, int nId) {
			System.out.println(nId);
			System.out.println(session.getAttribute("userId"));
			
			ClassNotice result = cbService.noticeDetail(nId);
			System.out.println(result);
			
			mv.addObject("noticeDetail", result);
			mv.setViewName("classBoard/notice_Detail");
			
		return mv;
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
		return "classBoard/gradeObjectionList";
	}
	
	
	
	
}
