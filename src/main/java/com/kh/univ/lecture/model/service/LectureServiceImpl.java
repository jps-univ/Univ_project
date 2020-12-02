package com.kh.univ.lecture.model.service;

import com.kh.univ.admin.model.vo.AdClassPlan;
import com.kh.univ.lecture.model.dao.LectureDao;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureTime;
import com.kh.univ.lecture.model.vo.SearchCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;

@Service("lectureService")
public class LectureServiceImpl implements LectureService {
    @Autowired
    private LectureDao lectureDao;

    @Override
    public ArrayList<Lecture> selectList(SearchCondition sc) {

        return lectureDao.selectList(sc);
    }

    @Override
    public ArrayList<Lecture> checkDept(String deptName) {
        return lectureDao.checkDept(deptName);
    }

    @Override
    public ArrayList<Lecture> checkCollege(String collegeCode) {
        return lectureDao.checkCollege(collegeCode);
    }

    @Override
    public ArrayList<LectureTime> getDayHourList(HashMap map) {
        return lectureDao.getDayHourList(map);
    }

    @Override
    public ArrayList<LectureTime> getDayHourListBasket(HashMap map) {
        return lectureDao.getDayHourListBasket(map);
    }

    @Override
    public ArrayList<LectureTime> getDayHourList2(HashMap map) {
        return lectureDao.getDayHourList2(map);
    }

    @Override
    public int insertRegisterClass(HashMap map) {
        return lectureDao.insertRegisterClass(map);
    }

    @Override
    public int insertBasketClass(HashMap map) {
        return lectureDao.insertBasketClass(map);
    }

    @Override
    public ArrayList<Lecture> selectList(HashMap map) {
        return lectureDao.selectList(map);
    }

    @Override
    public ArrayList<Lecture> selectBasket(HashMap map) {
        return lectureDao.selectBasket(map);
    }

    @Override
    public int deleteMyBasket(HashMap map) {
        return lectureDao.deleteMyBasket(map);
    }

    @Override
    public int codeCheck(String classCode) {
        return lectureDao.codeCheck(classCode);
    }



    @Override
    public int deleteMyClass(HashMap map) {
        return lectureDao.deleteMyClass(map);
    }

    @Override
    public int requestRegisterClass(Lecture lecture) {
        return lectureDao.requestRegisterClass(lecture);
    }

    @Override
    public int selectClassSeq(String classCode) {
        return lectureDao.selectClassSeq(classCode);
    }

    @Override
    public int insertClassTime(LectureTime lecTime) {
        return lectureDao.insertClassTime(lecTime);
    }

    @Override
    public ArrayList<Lecture> getDeleteTable(int profId) {
        return lectureDao.getDeleteTable(profId);
    }

    @Override
    public int requestDeleteClass(int classSeq) {
        return lectureDao.requestDeleteClass(classSeq);
    }

    @Override
    public int updateAdditional(HashMap map) {
        return  lectureDao.updateAdditional(map);
    }

    @Override
    public int insertPlan(AdClassPlan ap) {
        return lectureDao.insertPlan(ap);
    }


}
