package com.kh.univ.lecture.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.lecture.model.dao.LectureEvaluationDao;

@Service("lectureEvaluationSerivce")
public class LectureEvaluationServiceImpl implements LectureEvaluationService {

	@Autowired
	private LectureEvaluationDao lectureEvaluationDao;
}
