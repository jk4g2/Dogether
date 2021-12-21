package com.dogether.service;

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
}
