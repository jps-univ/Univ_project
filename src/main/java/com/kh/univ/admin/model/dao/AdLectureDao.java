package com.kh.univ.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.lecture.model.vo.Lecture;

@Repository("adLectureDao")
public class AdLectureDao {

    @Autowired
    private SqlSessionTemplate sqlSession;

	public int insertLecture(Lecture lecture) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminLectureMapper.adminInsertLecture",lecture);
	}
}
