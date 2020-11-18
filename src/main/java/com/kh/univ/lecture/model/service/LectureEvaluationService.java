package com.kh.univ.lecture.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureEvaluation;

public interface LectureEvaluationService 
{
	/**
	 * 학생 수강과목 조회
	 * @param map
	 * @return
	 */
	ArrayList<Lecture> selectStdSchdule(Map map);

	int evaluationSubmit(LectureEvaluation evaluation);
}