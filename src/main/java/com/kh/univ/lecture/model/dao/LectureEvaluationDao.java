package com.kh.univ.lecture.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("lectureEvaluationDao")
public class LectureEvaluationDao {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
