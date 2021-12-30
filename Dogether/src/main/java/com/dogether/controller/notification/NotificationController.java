package com.dogether.controller.notification;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("notification")
public class NotificationController {
	
	@RequestMapping("{step}.do")
	public String stepDo(@PathVariable String step) {
		return "notification/"+ step;
	}
}
