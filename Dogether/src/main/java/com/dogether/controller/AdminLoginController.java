package com.dogether.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dogether.domain.AdminVO;
import com.dogether.service.AdminLoginService;

@Controller
@RequestMapping("admin")
public class AdminLoginController {

	@Autowired
	AdminLoginService adminLoginService;
	
	@RequestMapping("adminLoginForm.do")
	public void adminLoginForm() {
		System.out.println("checkpoint!!!");
	}
	
	@RequestMapping("redirect.do")
	public void redirect() {}
	
	@PostMapping(value = "adminLogin.do", produces = "application/text; charset=UTF-8")
	public String adminlogin(AdminVO vo, HttpSession session ,Model m) {
		AdminVO result = adminLoginService.adminIdCheck_Login(vo);
		System.out.println("checkpoint");
		// 로그인이 됬으면
		if (result != null) {
			session.setAttribute("username", result.getAdminID());
			return "redirect:../admin/";
		}
		else {//로그인 안됬을떄
			m.addAttribute("msg","관리자 아이디 및 비밀번호를 확인해주세요!");
			return "admin/redirect";
		}
	}
}
