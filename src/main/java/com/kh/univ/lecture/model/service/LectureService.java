package com.kh.univ.lecture.model.service;

import com.kh.univ.lecture.model.vo.Lecture;

import java.util.ArrayList;
import java.util.List;

public interface LectureService {
    ArrayList<Lecture> selectList();

    ArrayList<Lecture> checkDept(String deptName);
}
