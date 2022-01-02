package com.dogether.dao;

import java.util.HashMap;
import java.util.List;

import com.dogether.domain.BoardVO;
import com.dogether.domain.MemberVO;

public interface MemberDAO {
	public List<MemberVO> getMemberList(MemberVO vo);//모든 유저
	public MemberVO getMemberInfo(String memberID);//특정 유저의 정보가져오기
	public void updatePoint(String memberID,int price);//포인트 추가하기
	public List<BoardVO> myBoardList(String memberID);//내 자랑하기 게시글 목록 가져오기
	public int updateMemberInfo(MemberVO vo);//내정보 수정하기
	public void deleteMember(MemberVO vo);	// 회원 삭제(탈퇴)하기(관리자페이지)
	public int getMemberCount();	// 회원 삭제(탈퇴)하기(관리자페이지)
	public List<HashMap<String,Object>> myrunninggooList(String memberID);//내 런닝구 목록 가져오기
	public List<HashMap<String,Object>> myhostrunninggooList(String memberID);//내가 호스트인 런닝구 목록 가져오기
	public void minusPointForRNGDeposit(String ID);	//런닝구 host 방만들기 & user 방참가 수락시 포인트 -5000
	public void plusPointForRNGDeposit(String ID);		// 호스트가 user 방참가 거절시 포인트 +5000
	public void plusPointForRNGDeposit1(int roomNum); // 호스트 방 삭제시 관련된 모든 멤버 +5000원 환불
}
