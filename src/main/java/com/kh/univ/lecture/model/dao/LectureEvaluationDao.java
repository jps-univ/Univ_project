package com.kh.univ.lecture.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.lecture.model.vo.Lecture;

@Repository("leDao")
public class LectureEvaluationDao 
{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Lecture> selectStdSchdule(Map map)
	{
		return (ArrayList)sqlSession.selectList("LectureEvaluationMapper.selectStdSchdule", map);
	}
}
