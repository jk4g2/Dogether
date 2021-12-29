package com.dogether.controller.runninggoo;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dogether.domain.MemberVO;
import com.dogether.domain.RunningGooVO;
import com.dogether.service.RunningGooService;

@Controller
@RequestMapping("runninggoo")
public class RunningGooController {
	@Autowired
	RunningGooService runningGooService;
	
	// 방만들기 페이지로 이동
	@RequestMapping("createRngRoom.do")
	public String CreateRngPage() {
		return "runninggoo/createRngRoom";
	}
	
	// 런닝구 방 생성 및 정보 입력하기
	@RequestMapping("rngInsert.do")
	public String CreateRngRoom(RunningGooVO vo, HttpSession session) {
		// Dogether 본 서버에서는 session.setAttribute를 해줄 필요가 없음.
		System.out.println((String) session.getAttribute("username"));
		vo.setMemberID(session.getAttribute("username").toString());
		runningGooService.insertRNRoomInfo(vo);
		System.out.println(vo.getRoomNumber());
		return "redirect:/runninggoo/";
	}
	
		// 런닝구 방 리스트 얻어오기
		@RequestMapping("/")
		public String runningGooList(RunningGooVO vo, Model m, HttpSession session) {
			String isSession = (String) session.getAttribute("username");
			if(isSession == null){
				m.addAttribute("msg","로그인이 필요한 서비스입니다.");
				return "redirect";
			}
			List<RunningGooVO> result = runningGooService.getRNRoomList(vo);
			int listCount = runningGooService.getRNRoomCount(vo);
			System.out.println(listCount);
			m.addAttribute("RunningGooList", result);
			m.addAttribute("rnRoomCNT", listCount);
			System.out.println("Model 객체를 통해 전달완료!");
			return "runninggoo/runningGooList";
		}
		
		// 런닝구 방 생성시 보유 포인트 조회하기
		@RequestMapping("viewMemberPoints.do")
		@ResponseBody
		public Integer viewMembersPoints(MemberVO vo, HttpSession session) {
			System.out.println("보유포인트 컨트롤러 테스트!");
			String nowMemberID = session.getAttribute("username").toString();
			System.out.println(nowMemberID);
			int rngMemberPoints = runningGooService.getMemberJoinRunningGoo(nowMemberID);
			System.out.println(rngMemberPoints);
			return rngMemberPoints;
		}
	
}
