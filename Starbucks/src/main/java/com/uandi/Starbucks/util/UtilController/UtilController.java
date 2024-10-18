package com.uandi.Starbucks.util.UtilController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UtilController {
	@GetMapping(value = "util/index.do")
	public String index() {
		return "util/util_Index";
	}
	@GetMapping(value = "util/faq.do")
	public String gfapPage() {
		return "util/util_faq";
	}
}
