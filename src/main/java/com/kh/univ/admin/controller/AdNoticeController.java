package com.kh.univ.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdNoticeController {
	
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
	public String AdQnaAnswer() {
		return "admin/ad_qna_answer";
	}
}
