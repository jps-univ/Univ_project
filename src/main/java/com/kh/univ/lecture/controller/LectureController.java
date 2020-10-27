package com.kh.univ.lecture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LectureController {

	@RequestMapping("lecture_evaluation.do")
	public String lectureEvaluation() {
		return "enrollClass/lecture_evaluation";
	}
}
