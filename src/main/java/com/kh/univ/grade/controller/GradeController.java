package com.kh.univ.grade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class GradeController {
	/**
	 * 1. 학기별 성적 조회 페이지
	 * @return
	 */
	@RequestMapping("lookUpGrade.do")
	public String lookUpGrade() {
		System.out.println("왜안되나염?");
		return "grade/lookUpGrade";
	}
	
	/**
	 * 2. 졸업사정표 페이지
	 * @return
	 */
	@RequestMapping("graduationRequired.do")
	public String graduationRequired() {
		return "grade/graduationRequired";
	}
	
	 
	/**
	 * 3. 성적증명서 페이지
	 * @return
	 */
	@RequestMapping("gradeCertificate.do")
	public String gradeCertificate() {
		return "grade/gradeCertificate";
	}
}
