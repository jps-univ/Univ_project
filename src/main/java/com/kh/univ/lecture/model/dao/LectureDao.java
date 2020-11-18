package com.kh.univ.lecture.model.dao;

import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureTime;
import com.kh.univ.lecture.model.vo.SearchCondition;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;

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

    public ArrayList<LectureTime> getDayHourList(int stdId) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectDayHour",stdId);
    }
    public ArrayList<LectureTime> getDayHourListBasket(int stdId) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectDayHourBasket",stdId);
    }

    public ArrayList<LectureTime> getDayHourList2(int classSeq) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectDayHour2",classSeq);

    }

    public int insertRegisterClass(HashMap map) {
        return sqlSession.insert("lectureMapper.insertRegisterClass",map);
    }
    public int insertBasketClass(HashMap map) {
        return sqlSession.insert("lectureMapper.insertBasketClass",map);
    }

    public ArrayList<Lecture> selectList(int stdId) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectMyTime",stdId);
    }
    public ArrayList<Lecture> selectBasket(int stdId) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectMyBasket",stdId);
    }

    public int deleteMyClass(HashMap map) {
        return sqlSession.delete("lectureMapper.deleteMyClass",map);
    }
    public int deleteMyBasket(HashMap map) {
        return sqlSession.delete("lectureMapper.deleteMyBasket",map);
    }


    public int codeCheck(String classCode) {
        return sqlSession.selectOne("lectureMapper.codeCheck",classCode);
    }

    public int requestRegisterClass(Lecture lecture) {
        return sqlSession.insert("lectureMapper.requestRegisterClass",lecture);
    }
}
