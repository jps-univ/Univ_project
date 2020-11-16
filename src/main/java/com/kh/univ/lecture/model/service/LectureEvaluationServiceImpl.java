package com.kh.univ.lecture.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.lecture.model.dao.LectureEvaluationDao;
import com.kh.univ.lecture.model.vo.Lecture;

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
}
