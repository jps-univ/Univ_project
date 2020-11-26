package com.kh.univ.classBoard.service;

import java.util.ArrayList;

import com.kh.univ.classBoard.vo.ClassAssignment;
import com.kh.univ.classBoard.vo.ClassNotice;
import com.kh.univ.classBoard.vo.PageInfo;
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
	 * 2_1. 공지사항 리스트 갯수 불러오기
	 * @return
	 */
	int getNoticeListCount(int classSeq);

	
	/*
	 * 2_2. 공지사항 리스트 불러오기
	 */
	ArrayList<ClassNotice> NoticeList(PageInfo pi, int classSeq);

	
	/**
	 * 2_3. 공지사항 detail
	 * @param nId
	 * @return
	 */
	ClassNotice noticeDetail(int nId);

	
	/**
	 * 3. 과제
	 * 3_1. 과제 리스트 갯수 불러오기
	 * @param classSeq
	 * @return
	 */
	int getAssignmentListCount(int classSeq);

	
	/**
	 * 3. 과재
	 * 3_2. 과제 리스트 가져오기
	 * @param pi
	 * @param classSeq
	 * @return
	 */
	ArrayList<ClassAssignment> assignmentList(PageInfo pi, int classSeq);



	




}
