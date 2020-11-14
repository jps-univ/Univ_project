package com.kh.univ.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.board.model.vo.Board;

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

}
