package com.kh.univ.lecture.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.univ.lecture.model.service.LectureService;
import com.kh.univ.lecture.model.vo.Lecture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

@Controller
public class LectureController {

    @Autowired
    private LectureService lectureService;

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


    @RequestMapping("requestRegisterLecture.do")
    public String requestRegisterLecture() {
        return "lectureManagement/requestRegisterLecture";
    }

    @RequestMapping("alterLectureInfo.do")
    public String alterLectureInfo() {
        return "lectureManagement/alterLectureInfo";
    }

    @RequestMapping("requestDeleteLecture.do")
    public String requestDeleteLecture() {
        return "lectureManagement/requestDeleteLecture";
    }

    /**
     * 강의리스트를 불러와서 수강신청하는 학생의 뷰에 뿌려줌
     * json을 string으로 변환해서 넘겨준다. DataTable()과 연동
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getLectureList.do", produces = "application/json; charset=utf-8")
    public String getLectureList() throws JsonProcessingException {
        ArrayList<Lecture> list = lectureService.selectList();
        ObjectMapper mapper = new ObjectMapper();

        String jsonStr = mapper.writeValueAsString(list);
        System.out.println(jsonStr);
        return jsonStr;
    }


}
