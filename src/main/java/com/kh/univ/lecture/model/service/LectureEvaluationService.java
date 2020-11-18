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

	/**
	 * 학생 강의 평가 제출
	 * @param evaluation
	 * @return
	 */
	int evaluationSubmit(LectureEvaluation evaluation);

	/**
	 * 교수 강의 조회
	 * @param map
	 * @return
	 */
	ArrayList<Lecture> selectProfSchdule(Map map);

	/**
	 * 교수 강의 평가 상세 조회
	 * @param lectureEvaluation
	 * @return
	 */
	ArrayList<LectureEvaluation> selectEvaluationDetail(LectureEvaluation lectureEvaluation);
}