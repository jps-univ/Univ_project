package com.kh.univ.board.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.board.model.service.BoardService;
import com.kh.univ.board.model.vo.Board;
import com.kh.univ.board.model.vo.PageInfo;
import com.kh.univ.common.PaginationBoard;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bService;
	
	@RequestMapping("nList.do")
	public ModelAndView nList() {
		ArrayList<Board> nList = bService.nList();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("common/main.jsp");
		mav.addObject("nList", nList);
		
		return mav;
	
	}
	
	@RequestMapping(value="boardList.do", method=RequestMethod.POST)
	public @ResponseBody ResponseEntity<HashMap<String,Object>> getBoardList(HttpServletRequest request, HttpServletResponse reponse, @RequestBody HashMap<String, Object> params) {
		HttpSession session = request.getSession();
		Student student = (Student) session.getAttribute("loginUser");
		System.out.println("seession : " + student);
		params.put("stdId", student.getStdId());
		
		int bCnt = bService.getBoardListCnt(params);
		int currentPage = 1;
		
		if(params.get("currentPage") != null && Integer.parseInt(params.get("currentPage").toString()) > 1) {
			currentPage = Integer.parseInt(params.get("currentPage").toString());
		} else {
			currentPage = 1;
		}
		
		System.out.println("page :" + currentPage);
		System.out.println("params : " + params);
		PageInfo pi = PaginationBoard.getPageInfo(currentPage, bCnt);
		params.put("pi",pi);
		
		ArrayList<Board> nList = bService.getBoardList(params);
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("pi",pi);
		resultMap.put("boardList",nList);
		
		return new ResponseEntity<HashMap<String,Object>>(resultMap,HttpStatus.OK);
		
	}
	
	@RequestMapping(value="boardProfessorList.do", method=RequestMethod.POST)
	public @ResponseBody ResponseEntity<HashMap<String,Object>> getBoardProfessorList(HttpServletRequest request, HttpServletResponse reponse, @RequestBody HashMap<String, Object> params) {
		HttpSession session = request.getSession();
		Professor professor = (Professor) session.getAttribute("loginUser");
		params.put("stdId", professor.getProfId());
		
		int bCnt = bService.getBoardListCnt(params);
		int currentPage = 1;
		
		if(params.get("currentPage") != null && Integer.parseInt(params.get("currentPage").toString()) > 1) {
			currentPage = Integer.parseInt(params.get("currentPage").toString());
		} else {
			currentPage = 1;
		}
		
		System.out.println("page :" + currentPage);
		System.out.println("params : " + params);
		PageInfo pi = PaginationBoard.getPageInfo(currentPage, bCnt);
		params.put("pi",pi);
		
		ArrayList<Board> nList = bService.getBoardList(params);
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("pi",pi);
		resultMap.put("boardList",nList);
		
		return new ResponseEntity<HashMap<String,Object>>(resultMap,HttpStatus.OK);
		
	}
	
	@RequestMapping(value="registQna.do", method=RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> registQna(HttpSession session, @RequestBody Board board) {
		System.out.println("board : " + board);
		board.setStdId(((Student)session.getAttribute("loginUser")).getStdId());
		int saveCnt = bService.registQna(board);
		
		if(saveCnt > 0) {
			
		}
		return new HashMap<String, Object>();
	}
	
	@RequestMapping(value="registAnswerQna.do", method=RequestMethod.POST)
	public String registAnswer(Board board, ModelAndView model) {
		bService.registAnswer(board);
		
		return "redirect:adQList.do";
	}
	
	@RequestMapping(value="enrollNotice.do", method=RequestMethod.POST)
	public String upsertNotice(Board board, ModelAndView model) {
		int updateCnt = bService.upsertNotice(board);
		
		
		if(updateCnt > 0) {
			return "redirect:adNList.do";
		} else {
			return "redirect:errorPage.do";
		}
	}
	
	@RequestMapping(value="removeNotice.do", method=RequestMethod.POST)
	public String deleteNotice(Board board, ModelAndView model) {
		int deleteCnt = bService.deleteNotice(board);
		
		if(deleteCnt > 0) {
			return "redirect:adNList.do";
		} else {
			return "redirect:errorPage.do";
		}
	}
	
}
