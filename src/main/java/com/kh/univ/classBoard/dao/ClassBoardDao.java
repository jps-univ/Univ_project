package com.kh.univ.classBoard.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.classBoard.vo.ClassAssignment;
import com.kh.univ.classBoard.vo.ClassNotice;
import com.kh.univ.classBoard.vo.PageInfo;
import com.kh.univ.lecture.model.vo.Lecture;

@Repository("cbDao")
public class ClassBoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Lecture> classList(int userId, int userYear, int userGrade) {
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("userYear", userYear);
		map.put("userGrade", userGrade);
		return (ArrayList)sqlSession.selectList("classBoardMapper.selectClassList", map);
	}

	
	
	public int noticeListCount(int classSeq) {
		return sqlSession.selectOne("classBoardMapper.selectNoticeCount", classSeq);
	}

	
	
	public ArrayList<ClassNotice> noticeList(PageInfo pi, int classSeq) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("classBoardMapper.selectNoticeList", classSeq, rowBounds);
	}
	
	

	public ClassNotice noticeDetail(int nId) {
		return (ClassNotice)sqlSession.selectOne("classBoardMapper.noticeDetail",nId);
	}



	public int assignListCount(int classSeq) {
		return sqlSession.selectOne("classBoardMapper.assignListCount", classSeq);
	}



	public ArrayList<ClassAssignment> assignmentList(PageInfo pi, int classSeq) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("classBoardMapper.assignmentList",classSeq, rowBounds);
	}



	public int insertNotice(ClassNotice cn) {

		return sqlSession.insert("classBoardMapper.insertNotice",cn);
	}



	public int insertAssignment(ClassAssignment ca) {
		return sqlSession.insert("classBoardMapper.insertAssignment",ca);
	}
	
	
}
