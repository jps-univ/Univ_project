package com.kh.univ.classBoard.service;

import java.util.ArrayList;

import com.kh.univ.lecture.model.vo.Lecture;

public interface ClassBoardService {

	ArrayList<Lecture> classList(int userId, int userYear, int userGrade);



}
