package com.kh.univ.lecture.model.dao;

import com.kh.univ.admin.model.vo.AdClassPlan;
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

    public ArrayList<LectureTime> getDayHourList(HashMap map) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectDayHour",map);
    }
    public ArrayList<LectureTime> getDayHourListBasket(HashMap map) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectDayHourBasket",map);
    }

    public ArrayList<LectureTime> getDayHourList2(HashMap map) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectDayHour2",map);

    }

    public int insertRegisterClass(HashMap map) {
        return sqlSession.insert("lectureMapper.insertRegisterClass",map);
    }
    public int insertBasketClass(HashMap map) {
        return sqlSession.insert("lectureMapper.insertBasketClass",map);
    }

    public ArrayList<Lecture> selectList(HashMap map) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectMyTime",map);
    }
    public ArrayList<Lecture> selectBasket(HashMap map) {
        return (ArrayList) sqlSession.selectList("lectureMapper.selectMyBasket",map);
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

    public int selectClassSeq(String classCode) {
        return sqlSession.selectOne("lectureMapper.selectClassSeq",classCode);
    }

    public int insertClassTime(LectureTime lecTime) {
        return sqlSession.insert("lectureMapper.insertClassTime", lecTime);
    }

    public ArrayList<Lecture> getDeleteTable(int profId) {
        return (ArrayList)sqlSession.selectList("lectureMapper.getDeleteTable",profId);
    }

    public int requestDeleteClass(int classSeq) {
        return sqlSession.update("lectureMapper.requestDeleteClass", classSeq);
    }

    public int updateAdditional(HashMap map) {
        return sqlSession.update("lectureMapper.updateAdditional", map);
    }

    public int insertPlan(AdClassPlan ap) {
        return sqlSession.insert("lectureMapper.insertPlan", ap);
    }
}
