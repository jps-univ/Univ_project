package com.kh.univ.classBoard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.classBoard.dao.ClassBoardDao;
import com.kh.univ.classBoard.vo.ClassAssignment;
import com.kh.univ.classBoard.vo.ClassNotice;
import com.kh.univ.classBoard.vo.PageInfo;
import com.kh.univ.classBoard.vo.ReplyAssignment;
import com.kh.univ.lecture.model.vo.Lecture;

@Service("cbService")
public class ClassBoardServiceImpl implements ClassBoardService {

	@Autowired
	private ClassBoardDao cbDao;
		
	@Override
	public ArrayList<Lecture> classList(int userId, int userYear, int userGrade) {
		
		return cbDao.classList(userId, userYear, userGrade);
	}

	@Override
	public int getNoticeListCount(int classSeq) {

		return cbDao.noticeListCount(classSeq);
	}

	


	@Override
	public ClassNotice noticeDetail(int nId) {
		return cbDao.noticeDetail(nId);
	}

	@Override
	public ArrayList<ClassNotice> NoticeList(PageInfo pi, int classSeq) {
		return cbDao.noticeList(pi, classSeq);
	}

	
	@Override
	public int getAssignmentListCount(int classSeq) {
		return cbDao.assignListCount(classSeq);
	}

	@Override
	public ArrayList<ClassAssignment> assignmentList(PageInfo pi, int classSeq) {
		return cbDao.assignmentList(pi, classSeq);
	}

	@Override
	public int insertClassNotice(ClassNotice cn) {
		return cbDao.insertNotice(cn);
	}

	@Override
	public int insertClassAssignment(ClassAssignment ca) {
		return cbDao.insertAssignment(ca);
	}

	@Override
	public ClassAssignment assignmentDetail(int aSeq) {
		return cbDao.assignmentDetail(aSeq);
	}

	@Override
	public ArrayList<ReplyAssignment> prdSassignmentlist(int aSeq) {
		return cbDao.profSassignmentlist(aSeq);
	}

	@Override
	public ReplyAssignment stdSassignmentlist(int aSeq, int userId) {
		return cbDao.stdSassignment(aSeq, userId);
	}



	@Override
	public int insertScore(ReplyAssignment ra) {
		
		return cbDao.insertScore(ra);
	}

	@Override
	public ReplyAssignment insertStdAssignment(int aSeq, int classSeq, int stdId) {
		return cbDao.insertStdAssign(aSeq, classSeq, stdId);
	}

	@Override
	public int updateStdFile(ReplyAssignment ra) {
		return cbDao.updateStdFile(ra);
	}


	
	

	



}
