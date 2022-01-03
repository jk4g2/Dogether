package com.dogether.controller.onlinept;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("aihometrainer")
public class OnlinePTController {

	@RequestMapping("/")
	public String online() {
		return "aihometrainer/1_aiHT_main";
	}
	
	@RequestMapping("{step}.do")
	public String stepDo (@PathVariable String step) {
		return "aihometrainer/"+step;
	}
		
}
	
	
