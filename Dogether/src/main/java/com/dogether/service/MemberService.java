package com.dogether.service;

import java.util.List;

import com.dogether.domain.BoardVO;
import com.dogether.domain.MemberVO;

public interface MemberService {
	public List<MemberVO> getMemberList(MemberVO vo);

	public MemberVO getMemberInfo(String memberID);

	public void updatePoint(String memberID, int price);

	public List<BoardVO> myBoardList(String memberID);
}
