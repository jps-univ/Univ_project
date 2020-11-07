package com.kh.univ.lecture.model.dao;

import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.SearchCondition;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository("lectureDao")
public class LectureDao {
    @Autowired
    private SqlSessionTemplate sqlSession;

    public ArrayList<Lecture> selectList(SearchCondition sc) {
//        System.out.println((ArrayList)sqlSession.selectList("lectureMapper.selectLectureAndTime"));
        return (ArrayList) sqlSession.selectList("lectureMapper.selectClassTime",sc);
    }

    public ArrayList<Lecture> checkDept(String deptName) {
        return(ArrayList) sqlSession.selectList("lectureMapper.selectMajor",deptName);
    }

    public ArrayList<Lecture> checkCollege(String collegeCode) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectDept",collegeCode);
    }
}
