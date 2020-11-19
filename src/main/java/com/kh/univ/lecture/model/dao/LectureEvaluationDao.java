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

	public ArrayList<Lecture> selectStdSchdule(Map map)
	{
		return (ArrayList)sqlSession.selectList("LectureEvaluationMapper.selectStdSchdule", map);
	}

	public int evaluationSubmit(LectureEvaluation evaluation) 
	{
		return sqlSession.insert("LectureEvaluationMapper.evaluationSubmit", evaluation);
	}

	public ArrayList<EvaluationResult> selectProfSchdule(EvaluationResult evaluation) 
	{
		return (ArrayList)sqlSession.selectList("LectureEvaluationMapper.selectProfSchdule", evaluation);
	}

	public ArrayList<EvaluationResult> selectEvaluationDetail(EvaluationResult evaluation) 
	{
		return (ArrayList)sqlSession.selectList("LectureEvaluationMapper.lectureEvaluationDetail", evaluation);
	}
}
