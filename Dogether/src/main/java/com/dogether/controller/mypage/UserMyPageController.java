package com.dogether.controller.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dogether.domain.BoardVO;
import com.dogether.domain.MemberVO;
import com.dogether.service.MemberService;

@Controller
@RequestMapping("userMyPage")
public class UserMyPageController {

   @Autowired
   private MemberService memberService;
   
   //마이페이지 메인화면
   @RequestMapping("myPage.do")
   public String myPage(String memberID, Model m, HttpSession session) {
      String sessionok = (String) session.getAttribute("username");
      if(sessionok == null){
         m.addAttribute("msg","로그인이 필요한 서비스입니다.");
         return "redirect";
      }
      memberID =  session.getAttribute("username").toString();
      MemberVO result = memberService.getMemberInfo(memberID);
      List<BoardVO> result2 = memberService.myBoardList(memberID);
      m.addAttribute("member",result);
      m.addAttribute("list", result2);
      return "userMyPage/myPage";
   }
   
   //포인트 결제
   @PostMapping("paypoint.do")
   @ResponseBody
   public String payPoint(String memberID,int price) {
      System.out.println("포인트 충전을 시작합니다.");
      memberService.updatePoint(memberID,price);
      return "포인트 충전 완료!!!";
   }
   
   //내 자랑하기 게시글 가져오기
   @PostMapping("myBoardList.do")
   @ResponseBody
   public String myBoardList(String memberID,Model m) {
      System.out.println("글 목록을 가져옵니다.");
      
      //return "내 자랑하기 게시글 가져오기 완료!";
      return "Conguraturation";
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
}