package com.dogether.service;

import java.util.List;

import com.dogether.domain.BoardVO;
import com.dogether.domain.Board_LikeVO;
import com.dogether.domain.Board_ReplyVO;

public interface BoardService {
	List<BoardVO> getBoardList();
	List<Board_ReplyVO> getReplyList();
	List<Board_LikeVO> getLikeList(Board_LikeVO vo);
}
