package com.dogether.controller.runninggoo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dogether.domain.MemberVO;
import com.dogether.domain.RunningGooVO;
import com.dogether.service.RunningGooService;

@Controller
public class RunningGooController {
	@Autowired
	RunningGooService runningGooService;
		// 런닝구 방 생성 및 정보 입력하기
	
	
		// 런닝구 방 리스트 얻어오기
		@RequestMapping("runninggoo.do")
		public String runningGooList(RunningGooVO vo, Model m) {
			List<RunningGooVO> result = runningGooService.getRNRoomList(vo);
			int listCount = runningGooService.getRNRoomCount(vo);
			System.out.println(listCount);
			m.addAttribute("RunningGooList", result);
			m.addAttribute("rnRoomCNT", listCount);
			System.out.println("Model 객체를 통해 전달완료!");
			return "runningGooList";
		}
		
		// 런닝구 방 생성시 보유 포인트 조회하기
		@RequestMapping("viewMemberPoints.do")
		@ResponseBody
		public Integer viewMembersPoints(MemberVO vo) {
			System.out.println("보유포인트 컨트롤러 테스트!");
			int rngMemberPoints = runningGooService.getMemberJoinRunningGoo(vo);
			System.out.println(rngMemberPoints);
			return rngMemberPoints;
		}
	
}
