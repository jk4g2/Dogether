package com.dogether.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dogether.domain.MemberVO;
import com.dogether.domain.RunningGooVO;

@Repository
public class RunningGooDAOImpl implements RunningGooDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<RunningGooVO> getRNRoomList(RunningGooVO vo) {
		System.out.println("런닝구 방 리스트 불러오는 함수 호출");
		return mybatis.selectList("runningGooDAOMapper.getRunningGooList", vo);
	}

	@Override
	public int getRunningGooRoomCount(RunningGooVO vo) {
		System.out.println("런닝구 방 갯수를 불러오는 함수 호출");
		return mybatis.selectOne("runningGooDAOMapper.getRunningGooRoomCount", vo);
	}
	
	@Override
	public int getRngMemberPoints(MemberVO vo) {
		System.out.println("런닝구 방 생성시 멤버의 보유 포인트를 가져오는 함수 호출");
		return mybatis.selectOne("runningGooDAOMapper.getMemberJoinRngList",vo);
	}

}
