package com.dogether.service;

import java.util.HashMap;
import java.util.List;

import com.dogether.domain.BoardVO;
import com.dogether.domain.Board_LikeVO;
import com.dogether.domain.Board_ReplyVO;

public interface BoardService {
	public List<BoardVO> getBoardList(BoardVO vo);
	public List<Board_ReplyVO> getReplyList();
	public List<Board_LikeVO> getLikeList(Board_LikeVO vo);
	public int deleteLike(Board_LikeVO vo);
	public int insertLike(Board_LikeVO vo);
	public int insertBoard(BoardVO vo);
	public int insertReply(Board_ReplyVO vo);
	public void deleteReply(Board_ReplyVO vo);
	public void deleteBoard(BoardVO vo);
	public void updateReply(Board_ReplyVO vo);
	public void updateBoard(BoardVO vo);
	public List<HashMap<String,Object>>getBoardListWithProfile(BoardVO vo);
	//자랑하기 삭제(관리자페이지)
	public void deleteBST(BoardVO vo);
	//자랑하기 글 수(관리자페이지)
	public int getBoastCount();
}
