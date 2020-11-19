package com.kh.univ.lecture.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.lecture.model.vo.EvaluationResult;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureEvaluation;

@Repository("leDao")
public class LectureEvaluationDao 
{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<EvaluationResult> selectStdSchdule(EvaluationResult evaluation)
	{
		return (ArrayList)sqlSession.selectList("LectureEvaluationMapper.selectStdSchdule", evaluation);
	}
	
	public ArrayList<EvaluationResult> selectStdEvaluation(EvaluationResult evaluation) 
	{
		return (ArrayList)sqlSession.selectList("LectureEvaluationMapper.selectStdEvaluation", evaluation);
	}

	public int evaluationSubmit(LectureEvaluation evaluation) 
	{
		return sqlSession.insert("LectureEvaluationMapper.evaluationSubmit", evaluation);
	}

	public ArrayList<EvaluationResult> selectProfSchdule(EvaluationResult evaluation) 
	{
		return (ArrayList)sqlSession.selectList("LectureEvaluationMapper.selectProfSchdule", evaluation);
	}
	
	public ArrayList<EvaluationResult> selectProfEvaluation(EvaluationResult evaluation) 
	{
		return (ArrayList)sqlSession.selectList("LectureEvaluationMapper.selectProfEvaluation", evaluation);
	}

	public ArrayList<EvaluationResult> selectEvaluationDetail(EvaluationResult evaluation) 
	{
		return (ArrayList)sqlSession.selectList("LectureEvaluationMapper.lectureEvaluationDetail", evaluation);
	}
}
