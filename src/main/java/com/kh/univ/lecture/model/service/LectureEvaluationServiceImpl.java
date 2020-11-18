package com.kh.univ.lecture.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.lecture.model.dao.LectureEvaluationDao;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureEvaluation;

@Service("leSerivce")
public class LectureEvaluationServiceImpl implements LectureEvaluationService 
{
	@Autowired
	private LectureEvaluationDao leDao;

	@Override
	public ArrayList<Lecture> selectStdSchdule(Map map) 
	{
		return leDao.selectStdSchdule(map);
	}

	@Override
	public int evaluationSubmit(LectureEvaluation evaluation)
	{
		return leDao.evaluationSubmit(evaluation);
	}

	@Override
	public ArrayList<Lecture> selectProfSchdule(Map map) 
	{
		return leDao.selectProfSchdule(map);
	}

	@Override
	public ArrayList<LectureEvaluation> selectEvaluationDetail(LectureEvaluation lectureEvaluation) 
	{
		return leDao.selectEvaluationDetail(lectureEvaluation);
	}
}
