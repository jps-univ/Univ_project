package com.kh.univ.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.board.model.vo.Board;
import com.kh.univ.board.model.vo.PageInfo;

@Repository("bDao")
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Board> selectList() {
		return (ArrayList)sqlSession.selectList("boardMapper.selectNList");
	}

	public Board findById(Board board) {
		return sqlSession.selectOne("boardMapper.findById",board);
	}

	public int findListCnt(HashMap<String, Object> params) {
		return sqlSession.selectOne("boardMapper.findListCnt", params);
	}

	public ArrayList<Board> findList(HashMap<String, Object> params) {
		PageInfo pi = (PageInfo) params.get("pi");
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return (ArrayList) sqlSession.selectList("boardMapper.findList", params, rowBounds);
	}

	public int save(Board board) {
		return sqlSession.insert("boardMapper.save", board);
	}

	public int updateAnswer(Board board) {
		return sqlSession.insert("boardMapper.updateAnswer", board);
	}

	public int upsertNotice(Board board) {
		System.out.println("board : " + board);
		return (board.getBoardId() != 0) ? sqlSession.update("boardMapper.updateNotice", board) : sqlSession.insert("boardMapper.save", board);
	}

	public int deleteNotice(Board board) {
		return sqlSession.delete("boardMapper.deleteById", board);
	}

}
