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
	
	/**
	 * 2. 강의 평가 학생 목록 조회 (교수)
	 * @return
	 */
	@RequestMapping("lecture_evaluation_check.do")
	public String lectureEvaluationCheck() {
		return "lectureManagement/lecture_evaluation_check";
	}
	
	/**
	 * 2_1. 강의 평가 상세 페이지 조회(교수)
	 * @return
	 */
	@RequestMapping("lecture_evaluation_detail.do")
	public String lectureEvaluationDetail() {
		return "lectureManagement/lecture_evaluation_detail";
	}
	
	@RequestMapping("requestRegisterLecture.do")
	public String requestRegisterLecture(){
		return "lectureManagement/requestRegisterLecture";
	}

	@RequestMapping("alterLectureInfo.do")
	public String alterLectureInfo(){
		return "lectureManagement/alterLectureInfo";
	}
	@RequestMapping("requestDeleteLecture.do")
	public String requestDeleteLecture(){
		return "lectureManagement/requestDeleteLecture";
	}



}
