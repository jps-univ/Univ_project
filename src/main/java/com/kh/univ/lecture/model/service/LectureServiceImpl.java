package com.kh.univ.lecture.model.service;

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
    public ArrayList<LectureTime> getDayHourList(int stdId) {
        return lectureDao.getDayHourList(stdId);
    }

    @Override
    public ArrayList<LectureTime> getDayHourList2(int classSeq) {
        return lectureDao.getDayHourList2(classSeq);
    }

    @Override
    public int insertRegisterClass(HashMap map) {
        return lectureDao.insertRegisterClass(map);
    }
}
