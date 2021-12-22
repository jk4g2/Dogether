package com.dogether.service;

import java.util.List;

import com.dogether.domain.MemberVO;
import com.dogether.domain.RunningGooVO;

public interface RunningGooService {
	
	// 런닝구 방정보 저장
	void insertRNRoomInfo();
	
	// 런닝구 리스트 가져오기
	List<RunningGooVO> getRNRoomList(RunningGooVO vo);
	
	// 런닝구 방 갯수 얻어오기
	int getRNRoomCount(RunningGooVO vo);
	
	// 멤버 포인트 조회
	int getMemberJoinRunningGoo(MemberVO vo);
	
}
