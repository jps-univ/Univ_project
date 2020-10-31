package com.kh.univ.lecture.model.dao;

import com.kh.univ.lecture.model.vo.Lecture;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository("lectureDao")
public class LectureDao {
    private SqlSessionTemplate sqlSession;
    public ArrayList<Lecture> selectList() {
        return (ArrayList)sqlSession.selectList("lectureMapper.selectList");
    }
}
