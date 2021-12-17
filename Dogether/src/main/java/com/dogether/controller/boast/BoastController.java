package com.dogether.controller.boast;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dogether.domain.BoardVO;
import com.dogether.domain.Board_LikeVO;
import com.dogether.domain.Board_ReplyVO;
import com.dogether.service.BoardServiceImpl;

@Controller
public class BoastController {

	@Autowired
	private BoardServiceImpl boardService;

	@RequestMapping("boast.do")
	public String getboardList(Model m, HttpSession session) {
		System.out.println("참꺠");
		Board_LikeVO vo = new Board_LikeVO();
		//vo.setLiker(session.getAttribute("username").toString().trim());
		//System.out.println(vo.getLiker());

		List<BoardVO> list = boardService.getBoardList();
		System.out.println("check1");
		List<Board_ReplyVO> reply_list = boardService.getReplyList();
		System.out.println("check2");
		for (int i = 0; i < reply_list.size(); i++) {
			System.out.println(reply_list.get(i));
		}
		List<Board_LikeVO> like_list = boardService.getLikeList(vo);
		for (int i = 0; i < like_list.size(); i++) {
			System.out.println(like_list.get(i));
		}
		System.out.println("check3");

		// 임의로 만들어놓은 세션
		m.addAttribute("reply_list", reply_list);
		m.addAttribute("list", list);
		m.addAttribute("like_list", like_list);

		return "boast";
	}

	@RequestMapping("insertBoard.do")
	public void insertBoard() {

	}

}
