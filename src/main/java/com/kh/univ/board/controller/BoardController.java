package com.kh.univ.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.board.model.service.BoardService;
import com.kh.univ.board.model.vo.Board;

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
}
