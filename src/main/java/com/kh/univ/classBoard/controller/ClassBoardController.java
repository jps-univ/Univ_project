package com.kh.univ.classBoard.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.univ.admin.controller.AdLectureController;
import com.kh.univ.admin.model.vo.AdClassPlan;
import com.kh.univ.classBoard.service.ClassBoardService;
import com.kh.univ.classBoard.vo.ClassAssignment;
import com.kh.univ.classBoard.vo.ClassNotice;
import com.kh.univ.classBoard.vo.PageInfo;
import com.kh.univ.classBoard.vo.ReplyAssignment;
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

		ArrayList<Lecture> lecList = new ArrayList<Lecture>(); 		
		
		if (user instanceof Student) {
			user = (Student) session.getAttribute("loginUser");
			userId = ((Student) user).getStdId();
			session.setAttribute("userId", userId);
			lecList = cbService.classList(userId, userYear, userGrade);
		} else if (user instanceof Professor) {
			user = (Professor) session.getAttribute("loginUser");
			userId = ((Professor) user).getProfId();
			session.setAttribute("userId", userId);
			lecList = cbService.classProList(userId, userYear, userGrade);
		}

		System.out.println("select : " + userId);

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
		ArrayList<AdClassPlan> adClassPlanSelect = cbService.adClassPlanSelect(classSeq);
		System.out.println(adClassPlanSelect);

		mv.addObject("Seq", classSeq);
		mv.addObject("profN", profName);
		mv.addObject("cPlan", adClassPlanSelect);
		
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
		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + File.separator + "uploadFiles";

		File folder = new File(savePath); // savePath의 폴더를 불러온다.

		if (!folder.exists()) {
			folder.mkdirs();
		}

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

		System.out.println("등록시 : " + cn.getProfName());

		
		if (!file.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file, request);

			if (renameFileName != null) { 
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

		classSeq = (int) session.getAttribute("classSeq");
		System.out.println("assign seq : " + classSeq);

		// paging처리
		int listCount = cbService.getAssignmentListCount(classSeq);

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<ClassAssignment> aNotice = cbService.assignmentList(pi, classSeq);
		
		
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
	public ModelAndView assginmentDetail(ModelAndView mv, HttpSession session, int aSeq) {
		System.out.println(aSeq);
		System.out.println(session.getAttribute("userId"));


		ClassAssignment result = cbService.assignmentDetail(aSeq);
		System.out.println(result);
		System.out.println("detail:"+result.getOriginalFileName());
		System.out.println("detail:"+result.getRenameFileName());
		mv.addObject("aDetail", result);
		
		Object user = session.getAttribute("loginUser");
		if(user instanceof Student) {
			
			int userId = (int) session.getAttribute("userId");
			ReplyAssignment sra = cbService.stdSassignmentlist(aSeq, userId);
			System.out.println(userId);
			mv.addObject("stdDetail", sra);
			System.out.println("stdDetail : " + sra);
			
			
		}else if(user instanceof Professor){
			ArrayList<ReplyAssignment> pra = cbService.prdSassignmentlist(aSeq);
			System.out.println("sdetail:"+ pra);
			mv.addObject("rDetail", pra);			
		}
		
		mv.setViewName("classBoard/assignmentDetail");

		return mv;
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

	
	@RequestMapping("submitAssign.do")
	public String submitAssign(HttpServletRequest request, HttpSession session, Model model,
			@RequestParam(name = "uploadFile", required = false) MultipartFile file) {
	

		int aSeq = Integer.parseInt(request.getParameter("aSeq1"));
		System.out.println(aSeq);
		int classSeq = (int)session.getAttribute("classSeq");
		int stdId = Integer.parseInt(request.getParameter("stdId"));
		
		ReplyAssignment ra = cbService.insertStdAssignment(aSeq, classSeq, stdId);
				
				
		if (!file.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file, request);

			if (renameFileName != null) { // 파일이 잘 저장된 경우
				ra.setOriginalFileName(file.getOriginalFilename());
				ra.setRenameFileName(renameFileName);
			} System.out.println("rename" + renameFileName); 
			}
		System.out.println(ra);
        int result = cbService.updateStdFile(ra);
		if (result > 0) {
			model.addAttribute("aSeq", aSeq);
			return "redirect:assignmentDetail.do";
		} else {
			return "common/errorPage";
		}
		
	}
	
	@RequestMapping("scoreAssign.do")
	public String scoreAssign(ReplyAssignment ra, HttpServletRequest request, Model model) {
		System.out.println("prof score" + ra);
 
		int result = cbService.insertScore(ra);
		int aSeq = ra.getaSeq();
		if (result > 0) {
			model.addAttribute("aSeq", aSeq);
			return "redirect:assignmentDetail.do";
		} else {
			return "common/errorPage";
		}
	}
	
	
	
	
	
	/**
	 * 5. 성적 이의 신청 리스트 페이지
	 * 
	 * @return
	 */
	@RequestMapping("gradeObjectionList.do")
	public String gradeObjectionList(HttpSession session) {
		String a = "";
		if( session.getAttribute("loginUser") instanceof Student) {
		
		a="classBoard/gradeObjectionList";
		
	}else if(session.getAttribute("loginUser") instanceof Professor) {
		
		a="classBoard/gradeObjectionList_P";
		
		}
		return a;
	}
	
	@ResponseBody
	@RequestMapping(value="callGrade.do", produces="application/json; charset=utf-8")
	public String callGrade(HttpSession session, HttpServletRequest request) throws JsonProcessingException {
		System.out.println("list조회 시작 : ");
		ArrayList<ReplyAssignment> rList = new ArrayList<ReplyAssignment>();
		
		if( session.getAttribute("loginUser") instanceof Student) {
			int stdId = (int)session.getAttribute("userId");
			int classSeq = (int)session.getAttribute("classSeq");
			HashMap map = new HashMap();
			
			map.put("stdId", stdId);
			map.put("classSeq", classSeq);
			
			rList= cbService.callStdGrade(map);
			System.out.println("std :" + rList);
			
		}	
		else if(session.getAttribute("loginUser") instanceof Professor) {
			int profId = (int)session.getAttribute("userId");
			int classSeq = (int)session.getAttribute("classSeq");
			HashMap map = new HashMap();
			
			map.put("stdId", profId);
			map.put("classSeq", classSeq);
			
			rList= cbService.callObjectionList(map);
			System.out.println("pro"+ rList);
		}
		
		
		
        ObjectMapper mapper = new ObjectMapper();

        String jsonStr = mapper.writeValueAsString(rList);
        return jsonStr;
	}
	
	@ResponseBody
	@RequestMapping(value="callGradeDetail.do", produces="application/json; charset=utf-8")
	public String gradeQuestion(HttpSession session, HttpServletRequest request, int aSeq) 
			throws JsonProcessingException {
		
		ReplyAssignment ra = new ReplyAssignment();
		

		int stdId = (int)session.getAttribute("userId");
		int classSeq = (int)session.getAttribute("classSeq");
		System.out.println("ase : " + aSeq);
		HashMap map = new HashMap();
		map.put("stdId", stdId);
		map.put("classSeq", classSeq);
		map.put("aSeq",aSeq);
		
		ra= cbService.callGradeDetail(map);
		System.out.println(ra);
			
		
		
		ObjectMapper mapper = new ObjectMapper();
        String jsonStr = mapper.writeValueAsString(ra);
        return jsonStr;
	}

	
	@ResponseBody
	@RequestMapping(value="callObjectionDetail.do", produces="application/json; charset=utf-8")
	public String gradeAnswer(HttpSession session, HttpServletRequest request, int sSeq) 
			throws JsonProcessingException {
		
		ReplyAssignment ra = new ReplyAssignment();
		
		
		int profId = (int)session.getAttribute("userId");
		int classSeq = (int)session.getAttribute("classSeq");
		System.out.println("sseq : " + sSeq);
		HashMap map = new HashMap();
		map.put("classSeq", classSeq);
		map.put("sSeq",sSeq);
		
		ra= cbService.callObjectionDetail(map);
		System.out.println("prof ra :"+ra);
		
		
		
		ObjectMapper mapper = new ObjectMapper();
		String jsonStr = mapper.writeValueAsString(ra);
		return jsonStr;
	}
	
	@RequestMapping(value="handOut.do")
	public void gradeQuestion1(HttpSession session, HttpServletResponse response, 
			HttpServletRequest request, String stuOpinion
			, String aSeq) throws IOException {
		
		ReplyAssignment ra = new ReplyAssignment();
		
		int aSeq1 = Integer.parseInt(aSeq);
		int stdId = (int)session.getAttribute("userId");
		int classSeq = (int)session.getAttribute("classSeq");
		System.out.println("ase : " + aSeq);
		System.out.println("stu : " + stuOpinion);
		HashMap map = new HashMap();
		map.put("stdId", stdId);
		map.put("classSeq", classSeq);
		map.put("aSeq",aSeq1);
		map.put("studQa",stuOpinion);
		

		ObjectMapper mapper = new ObjectMapper();
		String jsonStr = mapper.writeValueAsString(ra);
		
        int result = cbService.upgradeGradeOb(map);
		if (result > 0) {
			response.getWriter().print("성공!");
		} else {
			response.getWriter().print("실패!");
		}
		
		
	}
	
	@RequestMapping(value="modify.do")
	public void gradeQuestion2(HttpSession session, HttpServletResponse response, 
			HttpServletRequest request, String stuOpinion
			, String sSeq) throws IOException {
		
		ReplyAssignment ra = new ReplyAssignment();
		
		int sSeq1 = Integer.parseInt(sSeq);
		int stdId = (int)session.getAttribute("userId");
		int classSeq = (int)session.getAttribute("classSeq");
		System.out.println("ase : " + sSeq);
		System.out.println("stu : " + stuOpinion);
		HashMap map = new HashMap();
		map.put("stdId", stdId);
		map.put("classSeq", classSeq);
		map.put("sSeq",sSeq1);
		map.put("studQa",stuOpinion);
		
		
		ObjectMapper mapper = new ObjectMapper();
		String jsonStr = mapper.writeValueAsString(ra);
		
		int result = cbService.upgradeAnswerOb(map);
		if (result > 0) {
			response.getWriter().print("성공!");
		} else {
			response.getWriter().print("실패!");
		}
		
		
	}
	

}
