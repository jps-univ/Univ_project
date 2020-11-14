package com.kh.univ.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.board.model.dao.BoardDao;
import com.kh.univ.board.model.vo.Board;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDao bDao;

	@Override
	public ArrayList<Board> nList() {
		return bDao.selectList();
	}

	@Override
	public Board findById(Board board) {
		return bDao.findById(board);
	}
}
