package com.kh.univ.board.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.univ.board.model.vo.Board;

public interface BoardService {

	ArrayList<Board> nList();

	Board findById(Board board);
	
}
