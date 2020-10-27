package com.kh.univ.lecture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LectureController {

	/** 1. 강의 평가 하기( 학생)
	 * @return
	 */
	@RequestMapping("lecture_evaluation.do")
	public String lectureEvaluation() {
		return "lectureManagement/lecture_evaluation";
	}

	@RequestMapping("requestRegisterLecture")
	public String requestRegisterLecture(){
		return "lectureManagement/requestRegisterLecture";
	}
}
