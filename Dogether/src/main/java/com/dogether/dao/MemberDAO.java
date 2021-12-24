package com.dogether.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dogether.domain.BoardVO;
import com.dogether.domain.MemberVO;

public interface MemberDAO {
	public List<MemberVO> getMemberList(MemberVO vo);
	public MemberVO getMemberInfo(String memberID);
	public void updatePoint(String memberID,int price);
	public List<BoardVO> myBoardList(String memberID);
}
