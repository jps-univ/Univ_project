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
import com.kh.univ.classBoard.vo.ReplyAssignment;
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



	public ClassAssignment assignmentDetail(int aSeq) {
		return sqlSession.selectOne("classBoardMapper.assignmentDetail",aSeq);
	}



	public ArrayList<ReplyAssignment> profSassignmentlist(int aSeq) {
		return (ArrayList)sqlSession.selectList("classBoardMapper.profSassign",aSeq);
	}



	public ReplyAssignment stdSassignment(int aSeq, int userId) {
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("aSeq", aSeq);
		return sqlSession.selectOne("classBoardMapper.stdSassign", map);
	}







	public int insertScore(ReplyAssignment ra) {
		return sqlSession.update("classBoardMapper.insertScore", ra);
	}



	public ReplyAssignment insertStdAssign(int aSeq, int classSeq, int stdId) {
		Map map = new HashMap();
		map.put("stdId", stdId);
		map.put("aSeq", aSeq);
		map.put("classSeq", classSeq);
		int result = sqlSession.insert("classBoardMapper.insertStdAssign", map);
		
		return sqlSession.selectOne("classBoardMapper.selectStdAssign", map);
	}



	public int updateStdFile(ReplyAssignment ra) {
		return sqlSession.update("classBoardMapper.updateStdFile", ra);
	}



	public ArrayList<ReplyAssignment> callStdGrade(HashMap map) {
		return (ArrayList)sqlSession.selectList("classBoardMapper.callStdGrade", map);
	}



	public ReplyAssignment callGradeDetail(HashMap map) {
		return sqlSession.selectOne("classBoardMapper.callGradeDetail",map);
	}



	public ArrayList<ReplyAssignment> callObjectionList(HashMap map) {
		return (ArrayList)sqlSession.selectList("classBoardMapper.callObjectionList",map);
	}



	public ReplyAssignment callObjectionDetail(HashMap map) {
		return sqlSession.selectOne("classBoardMapper.callObjectionDetail",map);
	}




	
	
}
