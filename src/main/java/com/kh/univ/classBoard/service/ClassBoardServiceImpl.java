package com.kh.univ.classBoard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.classBoard.dao.ClassBoardDao;
import com.kh.univ.classBoard.vo.ClassNotice;
import com.kh.univ.classBoard.vo.PageInfo;
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

	



}
