package com.kh.univ.lecture.model.service;

import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureTime;
import com.kh.univ.lecture.model.vo.SearchCondition;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface LectureService {
    ArrayList<Lecture> selectList(SearchCondition sc);

    ArrayList<Lecture> checkDept(String deptName);

    ArrayList<Lecture> checkCollege(String collegeCode);

    ArrayList<LectureTime> getDayHourList(int stdId);

    ArrayList<LectureTime> getDayHourList2(int classSeq);

    int insertRegisterClass(HashMap map);
}
