package com.uandi.Starbucks.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
	@GetMapping(value = "login/login.do")
	public String login() {
		return "login/login";
	}
	@PostMapping(value = "/login/login_proc.do")
	public String login_proc() {
		
		
		return "login/login";
	}
}
