package com.kh.univ.classBoard.service;

import java.util.ArrayList;

import com.kh.univ.lecture.model.vo.Lecture;

public interface ClassBoardService {

	/**
	 * 1. 강의 목록 불러오기
	 * @param userId
	 * @param userYear
	 * @param userGrade
	 * @return
	 */
	ArrayList<Lecture> classList(int userId, int userYear, int userGrade);

	/**
	 * 2. 공지사항
	 * 2_1. 공지사항 리스트 불러오기
	 * @return
	 */
	int getNoticeListCount();



}
