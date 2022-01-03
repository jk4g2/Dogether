package com.dogether.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dogether.domain.BoardVO;
import com.dogether.domain.MemberVO;
import com.dogether.service.TestServiceImpl;

@Controller
public class UserController {
	
	@Autowired
	public TestServiceImpl testService;
	
	
	@RequestMapping("{step}.do")
	public String stepDo(@PathVariable String step) {
		System.out.println(step);
		return step;
	}
	
	//아이디 중복확인
	@GetMapping(value = "idCheck.do", produces = "application/text; charset=UTF-8")
	@ResponseBody // ************************************* 비동기통신을 의미 ajax
	public String idCheck(MemberVO vo) {
		System.out.println("아이디체크-------------------------------------------------------------");
		if(vo.getMemberID().equals("") || vo.getMemberID().toLowerCase().equals("admin")) {
			return "사용 불가능한 아이디 입니다";
		}
		MemberVO memberidcheck = testService.idCheck_Login(vo);
		String message = "사용가능한 아이디입니다";
		
		if (memberidcheck != null)
			return "중복된 아이디입니다";
		return message;
	}
	
	//닉네임 중복확인
	@GetMapping(value = "nickNameCheck.do", produces = "application/text; charset=UTF-8")
	@ResponseBody // ************************************* 비동기통신을 의미 ajax
	public String nickNameCheck(MemberVO vo) {
		System.out.println("닉네임체크-------------------------------------------------------------");
		if(vo.getNickName().equals("") || vo.getNickName().toLowerCase().equals("admin") || vo.getNickName().equals("관리자")) {
			return "사용 불가능한 닉네임 입니다";
		}
		
		MemberVO result = testService.nickName_Check(vo);
		String message = "사용가능한 닉네임입니다";
		if (result != null)
			return "중복된 닉네임입니다";
		return message;
	}
	
	//회원가입 submit 버튼 눌렀을 때  action = userInsert.do
	@PostMapping(value = "userInsert.do", produces = "application/text; charset=UTF-8")
	public String userinsert(MemberVO vo) {
		System.out.println("TQ");
		if(vo.getMember_fname()=="" || vo.getMember_fname()==null) {
			vo.setMember_fname("default_person.png");
			vo.setMember_realfname("default_person.png");	
			vo.setMember_fsize(0);
		}
		int result = testService.memberinsert(vo);
		System.out.println("디비에 사진 인설트 완료");
		String message = "가입 실패하였습니다.";
		if (result == 1)
			message = "가입을 축하드립니다";
		return "index";
	}
	
	//로그인이 되었을 때 로그아웃버튼 있는 index, 로그인 되지 않았을 때 login버튼 있는 index, Mapper에 id=memberLogin
	@PostMapping(value = "login.do", produces = "application/text; charset=UTF-8")
	public String login(MemberVO vo, HttpSession session ,Model m) {
		//System.out.println(vo.getMemberID());
		MemberVO result = testService.login(vo);
		// 로그인이 됬으면
		if (result != null) {
			session.setAttribute("username", result.getMemberID());
			return "index";
		} else {
			m.addAttribute("msg","아이디 및 비밀번호를 확인해주세요");
			m.addAttribute("check","1");
			return "redirect";
		}
	}
	
	//로그아웃
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		System.out.println("로그아웃 되었습니다.");
		session.invalidate();
		return "/index";
	}
	
	
}

