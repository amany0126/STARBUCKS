package com.uandi.Starbucks.my.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uandi.Starbucks.login.vo.Member;
import com.uandi.Starbucks.my.model.service.MyService;
import com.uandi.Starbucks.voc.model.service.VocService;
import com.uandi.Starbucks.voc.vo.InquiryDetails;

@Controller
public class myController {
	@Autowired
	VocService vocService;
	MyService myService;
	
	Map<String, Object> map = new HashMap<String, Object>();

	@GetMapping(value = "my/vocList.do")
	public String vocList(String YN_ANSWER,HttpSession session,Model model) {
		/*
		 * String memberNum = ((Member)session.getAttribute("loginUser")).getMemberNo();
		 * int memberNo = Integer.parseInt(memberNum); InquiryDetails i = new
		 * InquiryDetails();
		 * 
		 * 
		 * 
		 * i.setMemberNo(memberNo); i.setInquiryStatus(YN_ANSWER);
		 * 
		 * // 조회용 코드 작성하기
		 */
		
		model.addAttribute("YN_ANSWER",YN_ANSWER);
		return "my/vocList";
	}
	
	
}