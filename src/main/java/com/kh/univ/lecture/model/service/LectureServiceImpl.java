package com.kh.univ.lecture.model.service;

import com.kh.univ.lecture.model.dao.LectureDao;
import com.kh.univ.lecture.model.vo.Lecture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service("lectureService")
public class LectureServiceImpl implements LectureService {
    @Autowired
    private LectureDao lectureDao;

    @Override
    public ArrayList<Lecture> selectList() {
        System.out.println(lectureDao.selectList());
        return lectureDao.selectList();
    }
}
