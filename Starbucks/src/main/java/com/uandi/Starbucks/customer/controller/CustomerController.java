package com.uandi.Starbucks.customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uandi.Starbucks.login.vo.Member;

@Controller
public class CustomerController {
	@GetMapping(value = "customer/suggestionWrite.do")
	public String index(HttpSession session,Model model) {
		
		if(session.getAttribute("loginUser") != null) {
			
		String Phone = ((Member)session.getAttribute("loginUser")).getPhoneNum();
		
		/*010 - 123 - 1234*/
		/*012 3 456 7 8911*/
		String Phone1 =Phone.substring(0, 3);
		String Phone2 ="";
		String Phone3 ="";
		if(Phone.length() == 12) {
			Phone2 ="***";
			Phone3 = Phone.substring(8, 12);
		}else if(Phone.length() == 13) {
			Phone2 = "****";
			Phone3 = Phone.substring(9, 13);
		}
		
		
		model.addAttribute("Phone",Phone);
		model.addAttribute("Phone1",Phone1);
		model.addAttribute("Phone2",Phone2);
		model.addAttribute("Phone3",Phone3);
		}
		
		return "customer/customer_suggestionWrite";
	}
	@ResponseBody
	@GetMapping(value = "/customer/getSesstionAjax.do")
	public JSONObject getSesstionAjax(HttpServletRequest request,HttpSession session) {
		String _response = "";
		if(session == null || session.getAttribute("loginUser") == null) {
			_response = "FAIL" ;
		}else {
			_response = "SUCCESS" ;
		}
		
		JSONObject jsonobject = new JSONObject();
		
		jsonobject.put("alert_msg", "");
		jsonobject.put("custom_script", "");
		jsonobject.put("data", null);
		jsonobject.put("error_msg", "");
		jsonobject.put("location_href", "");
		jsonobject.put("location_replace", "");
		jsonobject.put("result_api_code", "");
		jsonobject.put("result_code", _response);
		jsonobject.put("total_cnt", 0);
		
		return jsonobject;
	}
}
