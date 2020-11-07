package com.kh.univ.lecture.model.service;

import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.SearchCondition;

import java.util.ArrayList;
import java.util.List;

public interface LectureService {
    ArrayList<Lecture> selectList(SearchCondition sc);

    ArrayList<Lecture> checkDept(String deptName);

    ArrayList<Lecture> checkCollege(String collegeCode);
}
