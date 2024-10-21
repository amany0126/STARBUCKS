package com.uandi.Starbucks.customer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomerController {
	@GetMapping(value = "customer/suggestionWrite.do")
	public String index() {
		return "customer/customer_suggestionWrite";
	}
}
