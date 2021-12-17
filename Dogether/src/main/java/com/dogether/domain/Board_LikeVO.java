package com.dogether.domain;

public class Board_LikeVO {
	private int boardID;
	private String liker;
	private String likeYN;
	
	public int getBoardID() {
		return boardID;
	}
	public void setBoardID(int boardID) {
		this.boardID = boardID;
	}
	public String getLiker() {
		return liker;
	}
	public void setLiker(String liker) {
		this.liker = liker;
	}
	public String getLikeYN() {
		return likeYN;
	}
	public void setLikeYN(String likeYN) {
		this.likeYN = likeYN;
	}
	
	
}
