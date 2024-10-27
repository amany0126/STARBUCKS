package com.uandi.Starbucks.util.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UtilController {
	@GetMapping(value = "util/index.do")
	public String index() {
		return "util/util_Index";
	}
	@RequestMapping(value = "util/faq.do")
	public String gfapPage() {
		return "util/util_faq";
	}
}
