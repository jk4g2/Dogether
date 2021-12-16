package com.dogether.controller.boast;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dogether.domain.BoardVO;
import com.dogether.domain.Board_ReplyVO;
import com.dogether.service.BoardServiceImpl;


@Controller
public class BoastController {

	@Autowired
	private BoardServiceImpl boardService;
	
	@RequestMapping("boast.do")
	public void getboardList(Model m) {	
		List<BoardVO> list = boardService.getBoardList();
		List<Board_ReplyVO> reply_list = boardService.getReplyList();
		m.addAttribute("reply_list",reply_list);
		m.addAttribute("list",list);
	}
	
	
	
	
	@RequestMapping("insertBoard.do")
	public void insertBoard() {
		
	}

}
