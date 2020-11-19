package com.kh.univ.lecture.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.lecture.model.dao.LectureEvaluationDao;
import com.kh.univ.lecture.model.vo.EvaluationResult;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureEvaluation;

@Service("leSerivce")
public class LectureEvaluationServiceImpl implements LectureEvaluationService 
{
	@Autowired
	private LectureEvaluationDao leDao;

	@Override
	public ArrayList<EvaluationResult> selectStdSchdule(EvaluationResult evaluation) 
	{
		return leDao.selectStdSchdule(evaluation);
	}

	@Override
	public ArrayList<EvaluationResult> selectStdEvaluation(EvaluationResult evaluation) 
	{
		return leDao.selectStdEvaluation(evaluation);
	}

	@Override
	public int evaluationSubmit(LectureEvaluation evaluation)
	{
		return leDao.evaluationSubmit(evaluation);
	}

	@Override
	public ArrayList<EvaluationResult> selectProfSchdule(EvaluationResult evaluation) 
	{
		return leDao.selectProfSchdule(evaluation);
	}
	
	@Override
	public ArrayList<EvaluationResult> selectProfEvaluation(EvaluationResult evaluation) 
	{
		return leDao.selectProfEvaluation(evaluation);
	}

	@Override
	public ArrayList<EvaluationResult> selectEvaluationDetail(EvaluationResult evaluation) 
	{
		return leDao.selectEvaluationDetail(evaluation);
	}
}
