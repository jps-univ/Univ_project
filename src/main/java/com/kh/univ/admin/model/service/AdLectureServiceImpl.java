package com.kh.univ.admin.model.service;

import org.springframework.stereotype.Service;

import com.kh.univ.admin.model.dao.AdLectureDao;
import com.kh.univ.lecture.model.vo.Lecture;

@Service("AdLectureService")
public class AdLectureServiceImpl implements AdLectureService{

	private AdLectureDao adLectureDao;

	@Override
	public int insertLecture(Lecture lecture) {
		// TODO Auto-generated method stub
		return adLectureDao.insertLecture(lecture);
	}
}
