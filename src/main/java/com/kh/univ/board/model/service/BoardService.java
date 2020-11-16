package com.kh.univ.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.univ.board.model.vo.Board;

public interface BoardService {

	ArrayList<Board> nList();

	Board findById(Board board);

	int getBoardListCnt(HashMap<String, Object> params);

	ArrayList<Board> getBoardList(HashMap<String, Object> params);

	int registQna(Board board);

	int registAnswer(Board board);
	
}
