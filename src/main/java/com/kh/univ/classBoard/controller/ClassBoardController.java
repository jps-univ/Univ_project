package com.kh.univ.classBoard.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.classBoard.service.ClassBoardService;
import com.kh.univ.classBoard.vo.ClassAssignment;
import com.kh.univ.classBoard.vo.ClassNotice;
import com.kh.univ.classBoard.vo.PageInfo;
import com.kh.univ.common.Pagination;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@Controller
public class ClassBoardController {

	@Autowired
	private ClassBoardService cbService;

	// classSeq
	// profName
	// user
	// userName

	/**
	 * 1. 강의 선택창 하윙
	 * 
	 * @return
	 */
	@RequestMapping("selectClass.do")
	public String selectClass(HttpSession session, Model model) {

		session.removeAttribute("classSeq");
		session.removeAttribute("profName");

		Object user = session.getAttribute("loginUser");
		String userName = "";
		String userStatus = "";
		if (user instanceof Student) {
			user = (Student) session.getAttribute("loginUser");
			userName = ((Student) user).getStdName();
			userStatus = ((Student) user).getStatus();
		} else if (user instanceof Professor) {
			user = (Professor) session.getAttribute("loginUser");
			userName = ((Professor) user).getProfName();
			userStatus = ((Professor) user).getStatus();
		}

//		System.out.println(user);

		session.setAttribute("user", user);
		session.setAttribute("userName", userName);
		session.setAttribute("userStatus", userStatus);
		System.out.println("userStatus" + userStatus);
		return "classBoard/selectClass";
	}

	@RequestMapping("classList.do")
	public void classList(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setContentType("application/json); charset=utf-8");

		Object user = session.getAttribute("loginUser");
		int userId = 0;
		int userYear = Integer.parseInt(request.getParameter("userYear"));
		int userGrade = Integer.parseInt(request.getParameter("userGrade"));

		System.out.println("select : " + userYear);
		System.out.println("select : " + userGrade);

		if (user instanceof Student) {
			user = (Student) session.getAttribute("loginUser");
			userId = ((Student) user).getStdId();
			session.setAttribute("userId", userId);
		} else if (user instanceof Professor) {
			user = (Professor) session.getAttribute("loginUser");
			userId = ((Professor) user).getProfId();
			session.setAttribute("userId", userId);
		}

		System.out.println("select : " + userId);

		ArrayList<Lecture> lecList = cbService.classList(userId, userYear, userGrade);
		System.out.println("select : " + lecList);

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
	public ModelAndView classBoardMain(String profName, int classSeq, HttpSession session, ModelAndView mv) {

		session.setAttribute("classSeq", classSeq);
		session.setAttribute("profName", profName);

		System.out.println("메인넘어갈때 seq : " + classSeq);
		System.out.println("메인넘어갈때 profName : " + profName);
		mv.addObject("Seq", classSeq);
		mv.addObject("profN", profName);

		mv.setViewName("classBoard/classBoardMain");

		return mv;
	}

	/**
	 * 2. 강의계획서 페이지
	 * 
	 * @return
	 */
	@RequestMapping("classPlan.do")
	public String classPlan() {
		return "classBoard/classPlan";
	}

	/**
	 * 3. 공지사항 리스트 페이지
	 * 
	 * @return
	 */
	@RequestMapping("cNoticeList.do")
	public ModelAndView noticeList(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			HttpSession session) {

		// list array로 가져오기
		int classSeq = 0;
//		if(session.getAttribute("classSeq") != null ) {
//			classSeq = Integer.parseInt((String) session.getAttribute("classSeq"));
//		}

		classSeq = (int) session.getAttribute("classSeq");
		System.out.println("notice seq : " + classSeq);

		// paging처리
		int listCount = cbService.getNoticeListCount(classSeq);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<ClassNotice> cNotice = cbService.NoticeList(pi, classSeq);

		mv.addObject("NoticeList", cNotice);
		mv.addObject("pi", pi);
		System.out.println(cNotice);
		if (classSeq != 0) {
			mv.setViewName("classBoard/noticeList");
		}

		return mv;
	}

	/*
	 * 3. 공지사항 notice detail페이지
	 * 
	 */
	@RequestMapping("cNoticeDetail.do")
	public ModelAndView noticeDetail(ModelAndView mv, HttpSession session, int nId) {
		System.out.println(nId);
		System.out.println(session.getAttribute("userId"));

		ClassNotice result = cbService.noticeDetail(nId);
		System.out.println(result);
		System.out.println("detail:"+result.getOriginalFileName());
		System.out.println("detail:"+result.getRenameFileName());
		mv.addObject("noticeDetail", result);
		mv.setViewName("classBoard/notice_Detail");

		return mv;
	}

	@RequestMapping("cNoticeWrite.do")
	public ModelAndView noticeWrite(ModelAndView mv, HttpSession session) {

		mv.setViewName("classBoard/write_notice");

		return mv;
	}

	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 파일이 저장될 경로를 설정하자
		// 웹서버 contextPath를 불러와서 폴더의 경로를 가져온다.(webapp하위의 resources)
		// C:\springWordspace\springProject\src\main\webapp\resources
		String root = request.getSession().getServletContext().getRealPath("resources");

		// root 하위의 buploadFiles 폴더를 연결
		// \를 문자로 인식하기 위해서는 \\를 사용한다.
		// C:\springWordspace\springProject\src\main\webapp\resources\buploadFiles
		// String savePath = root + "\\buploadFiles";
		String savePath = root + File.separator + "uploadFiles";

		File folder = new File(savePath); // savePath의 폴더를 불러온다.

		if (!folder.exists()) {
			// 폴더가 없으면 만들어라.
			folder.mkdirs();
		}

		// 원본 파일명을 년원일시분초.파일확장자명으로 변경
		String originalFileName = file.getOriginalFilename(); // test.png

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ originalFileName.substring(originalFileName.lastIndexOf(".") + 1);

		String renamePath = folder + File.separator + renameFileName; // 실제 저장될 파일 경로 + 파일명

		try {
			file.transferTo(new File(renamePath)); // 전달받은 file이 rename명으로 이때 서버에 저장이된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		return renameFileName;
	}

	@RequestMapping("enrollcNotice.do")
	public String insertBoard(ClassNotice cn, HttpServletRequest request,
			@RequestParam(name = "uploadFile", required = false) MultipartFile file) {

//		System.out.println("등록시 : " + cn.getClassSeq());
//		System.out.println("등록시 : " + cn.getnContent());
//		System.out.println("등록시 : " + cn.getnTitle());
		System.out.println("등록시 : " + cn.getProfName());
//		System.out.println(cn);

		
		if (!file.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file, request);

			if (renameFileName != null) { // 파일이 잘 저장된 경우
				cn.setOriginalFileName(file.getOriginalFilename());
				cn.setRenameFileName(renameFileName);
			} System.out.println("rename" + renameFileName); 
			}
		  
		  
		  System.out.println("등록시 : " + file.getOriginalFilename());
		 
        int result = cbService.insertClassNotice(cn);

		if (result > 0) {
			return "redirect:cNoticeList.do";
		} else {
			return "common/errorPage";
		}
	}

	/**
	 * 4. 과제 리스트 페이지
	 * 
	 * @return
	 */
	@RequestMapping("assignmentList.do")
	public ModelAndView assignmentList(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			HttpSession session) {

		int classSeq = 0;
//		if(session.getAttribute("classSeq") != null ) {
//			classSeq = Integer.parseInt((String) session.getAttribute("classSeq"));
//		}

		classSeq = (int) session.getAttribute("classSeq");
		System.out.println("assign seq : " + classSeq);

		// paging처리
		int listCount = cbService.getAssignmentListCount(classSeq);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<ClassAssignment> aNotice = cbService.assignmentList(pi, classSeq);
		System.out.println("currentPage : " + currentPage);
		System.out.println("listCount : " + listCount);
		System.out.println("endPage : " + pi.getEndPage());
		System.out.println("maxPage : " + pi.getMaxPage());
		
		
		mv.addObject("NoticeList", aNotice);
		mv.addObject("pi", pi);
		System.out.println(aNotice);
		if (classSeq != 0) {
			mv.setViewName("classBoard/assignmentList");
		}

		return mv;
	}

	/**
	 * 4-1. 과제 디테일 페이지
	 * 
	 * @return
	 */
	@RequestMapping("assignmentDetail.do")
	public String assignmentDetail() {
		return "classBoard/assignmentDetail";
	}

	/**
	 * 4-2. 학생 - 과제 제출 페이지
	 * 
	 * @return
	 */
	@RequestMapping("enrollaNotice.do")
	public String insertassignment(ClassAssignment ca, HttpServletRequest request,
			@RequestParam(name = "uploadFile", required = false) MultipartFile file) {

//		System.out.println("등록시 : " + cn.getClassSeq());
//		System.out.println("등록시 : " + cn.getnContent());
//		System.out.println("등록시 : " + cn.getnTitle());
		System.out.println("등록시 : " + ca.getProfName());
//		System.out.println(cn);

		
		if (!file.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file, request);

			if (renameFileName != null) { // 파일이 잘 저장된 경우
				ca.setOriginalFileName(file.getOriginalFilename());
				ca.setRenameFileName(renameFileName);
			} System.out.println("rename" + renameFileName); 
			}
		  
		  
		  System.out.println("등록시 : " + file.getOriginalFilename());
		 
        int result = cbService.insertClassAssignment(ca);

		if (result > 0) {
			return "redirect:assignmentList.do";
		} else {
			return "common/errorPage";
		}
	}

	/**
	 * 4-2. 학생 - 과제 제출 페이지
	 * 
	 * @return
	 */
	@RequestMapping("assignmentWrite.do")
	public ModelAndView assignmentWrite(ModelAndView mv, HttpSession session) {
		
		mv.setViewName("classBoard/write_assignment");

		return mv;
	}

	

	/**
	 * 5. 성적 이의 신청 리스트 페이지
	 * 
	 * @return
	 */
	@RequestMapping("gradeObjectionList.do")
	public String gradeObjectionList() {
		return "classBoard/gradeObjectionList";
	}

}
