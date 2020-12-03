package com.kh.univ.classBoard.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.univ.admin.model.vo.AdClassPlan;
import com.kh.univ.classBoard.vo.ClassAssignment;
import com.kh.univ.classBoard.vo.ClassNotice;
import com.kh.univ.classBoard.vo.PageInfo;
import com.kh.univ.classBoard.vo.ReplyAssignment;
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
	 * 2_4. 공지사항 작성 
	 * 
	 * @param cn
	 * @return
	 */
	int insertClassNotice(ClassNotice cn);

	
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

	
	/**
	 * 3_3. 과제 등록하기
	 * @param ca
	 * @return
	 */
	int insertClassAssignment(ClassAssignment ca);

	/**
	 * 3_4. 과제 디테일
	 * @param aSeq
	 * @return
	 */
	ClassAssignment assignmentDetail(int aSeq);

	
	/**
	 * 3_5. pros과제 디테일
	 * @param aSeq
	 * @return
	 */
	ArrayList<ReplyAssignment> prdSassignmentlist(int aSeq);

	
	/**
	 * 
	 * 3_6. 학생 assigndetail
	 * @param aSeq
	 * @param userId
	 * @return
	 */
	ReplyAssignment stdSassignmentlist(int aSeq, int userId);

	/**
	 * 3_7 학생 제출
	 * @param ra
	 * @return
	 */
	ReplyAssignment insertStdAssignment(int aSeq, int classSeq, int stdId);

	
	/**
	 * 3_8 과제 채점
	 * @param ra
	 * @return
	 */
	int insertScore(ReplyAssignment ra);

	/**
	 * 3_9 학생 파일 업로드
	 * @param ra
	 * @return
	 */
	int updateStdFile(ReplyAssignment ra);

	
	/**
	 * 학생 성적 조회ㅂ
	 * @param map
	 * @return
	 */
	ArrayList<ReplyAssignment> callStdGrade(HashMap map);

	
	/**
	 * 학생, 교수 성적이의 신청 내용
	 * @param map
	 * @return
	 */
	ReplyAssignment callGradeDetail(HashMap map);

	
	ArrayList<ReplyAssignment> callObjectionList(HashMap map);

	/**
	 * 교수, 학생 이의신청 조회
	 * @param map
	 * @return
	 */
	ReplyAssignment callObjectionDetail(HashMap map);

	ArrayList<AdClassPlan> adClassPlanSelect(int classSeq);


	



	




}
