package com.kh.univ.lecture.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.univ.lecture.model.vo.EvaluationResult;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureEvaluation;

public interface LectureEvaluationService 
{

	/**
	 * 학생 수강 과목 조회
	 * @param evaluation
	 * @return
	 */
	ArrayList<EvaluationResult> selectStdSchdule(EvaluationResult evaluation);
	
	/**
	 * 학생 강의 평가 내역 조회
	 * @param evaluation
	 * @return
	 */
	ArrayList<EvaluationResult> selectStdEvaluation(EvaluationResult evaluation);

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
	ArrayList<EvaluationResult> selectProfSchdule(EvaluationResult evaluation);

	/**
	 * 교수 강의 평가 조회
	 * @param evaluation
	 * @return
	 */
	ArrayList<EvaluationResult> selectProfEvaluation(EvaluationResult evaluation);
	
	/**
	 * 교수 강의 평가 상세 조회
	 * @param lectureEvaluation
	 * @return
	 */
	ArrayList<EvaluationResult> selectEvaluationDetail(EvaluationResult evaluation);


	
}