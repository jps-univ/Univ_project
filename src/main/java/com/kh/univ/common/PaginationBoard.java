package com.kh.univ.common;

import com.kh.univ.board.model.vo.PageInfo;

public class PaginationBoard {
	public static PageInfo getPageInfo(int currentPage, int listCount) {
		PageInfo pi = null;
		
		int limit = 5;
		int buttonCount = 5;
		int maxPage;
		int startPage;
		int endPage;
		
		maxPage = (int)((double)listCount / limit + 0.9);
		
		startPage = (((int)((double)currentPage/buttonCount + 0.9)) - 1) * buttonCount + 1;
		
		endPage = startPage + buttonCount - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage, buttonCount);
		
		return pi;
	}
}
