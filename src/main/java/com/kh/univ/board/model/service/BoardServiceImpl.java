package com.kh.univ.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

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

	@Override
	public int getBoardListCnt(HashMap<String, Object> params) {
		return bDao.findListCnt(params);
	}

	@Override
	public ArrayList<Board> getBoardList(HashMap<String, Object> params) {
		return bDao.findList(params);
	}

	@Override
	public int registQna(Board board) {
		return bDao.save(board);
	}

	@Override
	public int registAnswer(Board board) {
		return bDao.updateAnswer(board);
	}

	@Override
	public int upsertNotice(Board board) {
		return bDao.upsertNotice(board);
	}

	@Override
	public int deleteNotice(Board board) {
		return bDao.deleteNotice(board);
	}
}
