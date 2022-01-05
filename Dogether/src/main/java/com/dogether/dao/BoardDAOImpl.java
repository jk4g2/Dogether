package com.dogether.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dogether.domain.BoardVO;
import com.dogether.domain.Board_LikeVO;
import com.dogether.domain.Board_ReplyVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<BoardVO> getBoardList(BoardVO vo) {
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}

	@Override
	public List<Board_ReplyVO> getReplyList() {
		return mybatis.selectList("BoardDAO.getReplyList");
	}

	@Override
	public List<Board_LikeVO> getLikeList(Board_LikeVO vo) {
		System.out.println("mapper 들어가기전.. >" + vo.getLiker() + "<");
		return mybatis.selectList("BoardDAO.getLikeList", vo);
	}

	@Override
	public int deleteLike(Board_LikeVO vo) {

		int result = mybatis.update("BoardDAO.updateCount", vo);
		// 좋아요 취소..
		if (result == 1) {
			System.out.println("좋아요 수 업데이트 완료 +++++++");
			System.out.println();
		}
		return mybatis.delete("BoardDAO.deleteLike", vo);
	}

	@Override
	public int insertLike(Board_LikeVO vo) {
		int result = mybatis.update("BoardDAO.updateCount", vo);
		if (result == 1) {
			System.out.println("좋아요 수 업데이트 완료-------------");
			System.out.println();
		}
		return mybatis.insert("BoardDAO.insertLike", vo);
	}

	@Override
	public int insertBoard(BoardVO vo) {
		return mybatis.insert("BoardDAO.insertBoard", vo);
	}

	@Override
	public int insertReply(Board_ReplyVO vo) {
		mybatis.insert("BoardDAO.insertReply", vo);
		return mybatis.selectOne("BoardDAO.getLastReplyID");
	}

	// 자랑하기 삭제(관리자페이지)
	@Override
	public void deleteBST(BoardVO vo) {
		System.out.println("mybatis 상품 삭제 호출함");
		System.out.println(vo.getBoardID() + "자랑하기 삭제");
		mybatis.delete("BoardDAO.deleteBST", vo);
	}

	// 자랑하기 글 수(관리자페이지)
	@Override
	public int getBoastCount() {
		System.out.println("mybatis 자랑하기 글 수 호출함");
		return mybatis.selectOne("BoardDAO.getBoastCount");
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		mybatis.delete("BoardDAO.deleteBST", vo);
	}

	@Override
	public void deleteReply(Board_ReplyVO vo) {
		mybatis.delete("BoardDAO.deleteReply", vo);
	}

	@Override
	public void updateReply(Board_ReplyVO vo) {
		mybatis.update("BoardDAO.updateReply", vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		mybatis.update("BoardDAO.updateBoard",vo);
	}
	@Override
	public List<HashMap<String, Object>> getBoardListWithProfile(BoardVO vo) {
		return mybatis.selectList("BoardDAO.getBoardListWithProfile",vo);
	}
}
