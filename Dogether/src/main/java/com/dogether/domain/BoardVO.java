package com.dogether.domain;

public class BoardVO {
	private int BoardID;
	private String  MemberID;
	private String  BoardTitle;
	private String  BoardContent;
	private String  Board_fname;
	private String  Board_realfname;
	private int fsize;
	private int Board_like_count;
	
	public int getBoardID() {
		return BoardID;
	}
	public void setBoardID(int boardID) {
		BoardID = boardID;
	}
	public String getMemberID() {
		return MemberID;
	}
	public void setMemberID(String memberID) {
		MemberID = memberID;
	}
	public String getBoardTitle() {
		return BoardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		BoardTitle = boardTitle;
	}
	public String getBoardContent() {
		return BoardContent;
	}
	public void setBoardContent(String boardContent) {
		BoardContent = boardContent;
	}
	public String getBoard_fname() {
		return Board_fname;
	}
	public void setBoard_fname(String board_fname) {
		Board_fname = board_fname;
	}
	public String getBoard_realfname() {
		return Board_realfname;
	}
	public void setBoard_realfname(String board_realfname) {
		Board_realfname = board_realfname;
	}
	public int getFsize() {
		return fsize;
	}
	public void setFsize(int fsize) {
		this.fsize = fsize;
	}
	public int getBoard_like_count() {
		return Board_like_count;
	}
	public void setBoard_like_count(int board_like_count) {
		Board_like_count = board_like_count;
	}
	
}
