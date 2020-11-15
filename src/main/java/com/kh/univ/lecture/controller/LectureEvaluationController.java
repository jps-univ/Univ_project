package com.kh.univ.lecture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.univ.lecture.model.service.LectureEvaluationService;

public class LectureEvaluationController {

	@Autowired
	private LectureEvaluationService lectureEvaluationService;
	
	
	
	  /**
     * 1. 강의 평가 하기( 학생)
     *
     * @return
     */
    @RequestMapping("lecture_evaluation.do")
    public String lectureEvaluation() {
        return "lectureManagement/lecture_evaluation";
    }

    /**
     * 1_2 . 강의평가 하기전에 자신이 듣고 있는 강의 중 선택하는 창
     *
     * @return
     */
    @RequestMapping("lecture_evaluation_select.do")
    public String lectureEvaluationSelect() {
        return "lectureManagement/lecture_evaluation_select";
    }

    /**
     * 2. 강의 평가 학생 목록 조회 (교수)
     *
     * @return
     */
    @RequestMapping("lecture_evaluation_check.do")
    public String lectureEvaluationCheck() {
        return "lectureManagement/lecture_evaluation_check";
    }

    /**
     * 2_1. 강의 평가 상세 페이지 조회(교수)
     *
     * @return
     */
    @RequestMapping("lecture_evaluation_detail.do")
    public String lectureEvaluationDetail() {
        return "lectureManagement/lecture_evaluation_detail";
    }
    
    // 강의 평가 자신이 듣고 있는 창 선택을 교수는 자신이 강의하는 강의 목록을 나오게 한다 
    // 자신이 강의하는 강의목록을 누르면 그 강의를 듣는 학생을 전부 조회(강의평가 여부를같이 조회할수 있도록한다.)
    // 위의 학생중 한명을 누르면 강의평가한 내용을 볼수 있도록 한다
    // 처리중 고민해야할건 교수입장에서 학생들의 강의평가를 조회할때 그 학생의 개인정보를 같이 띄워준다면 그 학생이 누군지 알아볼수 있게 할것인가?
   // 아니면 학생이름과 학번은 "xxxx" 이런 식으로 띄워서 누군지 모르게 할것인가.)
	
}
