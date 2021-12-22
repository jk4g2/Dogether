package com.dogether.controller.healthandSleep;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dogether.domain.BoardVO;
import com.dogether.domain.Board_LikeVO;
import com.dogether.domain.Board_ReplyVO;
import com.dogether.service.BoardServiceImpl;
@Controller
public class HealthController {
	
	@Autowired
	private BoardServiceImpl boardService;
	
	@RequestMapping("healthcenter.do")
	public void getboardList(Model m) {
		
		

	}
}
