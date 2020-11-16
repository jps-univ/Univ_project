package com.kh.univ.classBoard.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.classBoard.vo.ClassNotice;
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
		System.out.println(map.get("userId"));
		
		
		ArrayList arr = (ArrayList)sqlSession.selectList("classBoardMapper.selectClassList", map);
		System.out.println("Dao : " + arr);
		
		return (ArrayList)sqlSession.selectList("classBoardMapper.selectClassList", map);
	}

	public int noticeListCount() {
		
		return 0;
	}

	public ArrayList<ClassNotice> noticeList(int classSeq) {

		return (ArrayList)sqlSession.selectList("classBoardMapper.selectNoticeList", classSeq);
	}
	
	
}
