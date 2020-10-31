package com.kh.univ.lecture.model.service;

import com.kh.univ.lecture.model.vo.Lecture;

import java.util.ArrayList;

public interface LectureService {
    ArrayList<Lecture> selectList();
}
