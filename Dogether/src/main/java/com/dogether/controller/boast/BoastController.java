package com.dogether.controller.boast;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
		//임의로만들어놓은 세션 "hong"
		session.setAttribute("username", "hong");
		Board_LikeVO vo = new Board_LikeVO();
		vo.setLiker(session.getAttribute("username").toString().trim());

		//mapper까지 찍고 갔다오기..
		List<BoardVO> list = boardService.getBoardList();
		List<Board_ReplyVO> reply_list = boardService.getReplyList();
		List<Board_LikeVO> like_list = boardService.getLikeList(vo);
		
		//jsp로 보내기..
		m.addAttribute("reply_list", reply_list);
		m.addAttribute("list", list);
		m.addAttribute("like_list", like_list);

		
		return "boast";
	}

	@GetMapping(value = "updateLike.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String updateBoardLike(Board_LikeVO vo) {
		int result = 0;		
		//이미 좋아요에서 좋아요를 취소할시..
		if(vo.getLikeY().equals("Y")) {
			System.out.println(vo.getBoard_like_no());
			System.out.println();
			result = boardService.deleteLike(vo);
		//좋아요를 안한상태에서 좋아요를 눌렀을 때,
		}else if(vo.getLikeY().equals("N")) {
			System.out.println(vo.getBoard_like_no());
			System.out.println();
			result = boardService.insertLike(vo);
		}
		
		return Integer.toString(result);
	}

	@RequestMapping("insertBoards.do")
	public String insertBoard(BoardVO vo) {
		vo.setMemberID("zero-mook");
		System.out.println(vo.getBoard_fsize());
		System.out.println(vo.getBoard_fname());
		System.out.println(vo.getBoard_realfname());
		int result = boardService.insertBoard(vo);
		return "redirect:boast.do";
	}
}
