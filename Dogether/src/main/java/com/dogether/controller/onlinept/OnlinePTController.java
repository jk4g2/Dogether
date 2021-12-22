package com.dogether.controller.onlinept;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ai_home_trainer_view")
public class OnlinePTController {

	
	@RequestMapping("{step}.do")
	public String stepDo (@PathVariable String step) {
		return "ai_home_trainer_view/"+step;
	}
		
}
	
	
