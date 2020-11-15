package com.kh.univ.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.board.model.service.BoardService;
import com.kh.univ.board.model.vo.Board;

@Controller
public class AdNoticeController {
	
	@Autowired
	BoardService bService;
	
	@RequestMapping("adNList.do")
	public String AdNoticeList() {
		return "admin/ad_notice_list";
	}
	
	@RequestMapping("adQList.do")
	public String AdQnaList() {
		return "admin/ad_qna_list";
	}
	
	@RequestMapping("adNAnswer.do")
	public String AdNoticeAnswer() {
		return "admin/ad_notice_answer";
	}
	
	@RequestMapping("adQAnswer.do")
	public ModelAndView AdQnaAnswer(Board board, ModelAndView model) {
		model.addObject("board",bService.findById(board));
		model.setViewName("admin/ad_qna_answer");
		return model;
	}
}
