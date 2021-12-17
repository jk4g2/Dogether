package com.dogether.controller.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dogether.domain.RunningGooVO;
import com.dogether.service.RunningGooService;

public class AdminMyPageController {
	
	@Autowired
	RunningGooService runningGooService;

	// 1번 페이지로 이동
	@RequestMapping("adminpage.do")
	public void admin() {
		System.out.println("잘받음!!");
	}
	
	// 2번 런닝구 목록보기
	@RequestMapping("runninggoomng.do")
	public String rngmng(RunningGooVO vo, Model m) {		
		System.out.println("리스트 전달완료!");
		List<RunningGooVO> voList = runningGooService.getRNRoomList(vo);
		System.out.println("리스트 전달완료!");
		m.addAttribute("runningGooList", voList);
		System.out.println("리스트 전달완료!!");
		return "redirect:adminpage"; 
				
	}
	
	
}
