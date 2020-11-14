package com.kh.univ.board.model.vo;

import java.sql.Date;

public class Board {
	private int boardId;
	private int stdId;
	private int fileId;
	private String bTitle;
	private Date bDate;
	private String bContents;
	private String bAnswer;
	private int bCount;
	private String bType;
	private String stdName;
	
	public Board() {
	}

	public Board(int boardId, int stdId, int fileId, String bTitle, Date bDate, String bContents, String bAnswer,
			int bCount, String bType, String stdName) {
		super();
		this.boardId = boardId;
		this.stdId = stdId;
		this.fileId = fileId;
		this.bTitle = bTitle;
		this.bDate = bDate;
		this.bContents = bContents;
		this.bAnswer = bAnswer;
		this.bCount = bCount;
		this.bType = bType;
		this.stdName = stdName;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public int getStdId() {
		return stdId;
	}

	public void setStdId(int stdId) {
		this.stdId = stdId;
	}

	public int getFileId() {
		return fileId;
	}

	public void setFileId(int fileId) {
		this.fileId = fileId;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	public String getbContents() {
		return bContents;
	}

	public void setbContents(String bContents) {
		this.bContents = bContents;
	}

	public String getbAnswer() {
		return bAnswer;
	}

	public void setbAnswer(String bAnswer) {
		this.bAnswer = bAnswer;
	}

	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}

	public String getbType() {
		return bType;
	}

	public void setbType(String bType) {
		this.bType = bType;
	}

	public String getStdName() {
		return stdName;
	}

	public void setStdName(String stdName) {
		this.stdName = stdName;
	}

	@Override
	public String toString() {
		return "Board [boardId=" + boardId + ", stdId=" + stdId + ", fileId=" + fileId + ", bTitle=" + bTitle
				+ ", bDate=" + bDate + ", bContents=" + bContents + ", bAnswer=" + bAnswer + ", bCount=" + bCount
				+ ", bType=" + bType + ", stdName=" + stdName + "]";
	}

	
}
