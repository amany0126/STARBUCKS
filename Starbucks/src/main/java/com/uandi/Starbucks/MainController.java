package com.uandi.Starbucks;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@GetMapping(value = "/")
	public String index() {
		return "common/MainPage2";
	}
}
