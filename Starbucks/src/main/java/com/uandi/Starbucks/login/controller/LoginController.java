package com.uandi.Starbucks.login.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.uandi.Starbucks.login.model.service.MemberService;
import com.uandi.Starbucks.login.vo.Member;

@Controller
public class LoginController {
	@Autowired private BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired private MemberService memberService;
	@Autowired private Map<String, Object> map = new HashMap<String, Object>();
	
	
	
	@GetMapping(value = "login/login.do")
	public String login() {
		return "login/login";
	}
	@ResponseBody
	@PostMapping(value = "/login/login_proc.do")
	public /*Map<String, Object>*/String   login_proc(Member m,String idRemb, Model model,HttpServletResponse response, HttpSession session) {
		
		
		
		if (idRemb != null && idRemb.equals("on")) {
			Cookie cookie = new Cookie("saveId", m.getMemberId()); // 쿠키의 saveId에  email 정보 기입 
			cookie.setMaxAge( 7 * 24 * 60 * 60); // 쿠키의 유효기간을  1일을 초로 변환하여 지정
			response.addCookie(cookie); // 정보 업데이트
		}else {
			Cookie cookie = new Cookie("saveId", m.getMemberId()); // 쿠키의 saveId에  email 정보 기입 
			cookie.setMaxAge(0); // 쿠키의 유효기간을  0초로 지정
			response.addCookie(cookie); // 정보 업데이트
		}
		// 로그인을 시도하는 이메일의 정보 가져오기
		Member loginUser = memberService.loginMember(m);
		String result;
		// 가저온 정보와 비밀번호 일치여부 
		// 다만 DB 상에서는 암호화가 되어있기떄문에 matches(입력된 pwd, 암호화된 pwd) 를 통하여 비교
		if (loginUser != null && bcryptPasswordEncoder.matches(m.getPassword(), loginUser.getPassword())) {
			// 일치하면 session에 로그인 유저 정보 담기
			session.setAttribute("loginUser", loginUser);
			result = "성공";
		}else {
			result = "실패";
		}
		String NickName = loginUser.getNickName();
		System.out.println(result);
		map.put("NickName", NickName );
		map.put("result", result);
		
		model.addAttribute("NickName",NickName);
		model.addAttribute("result",result);
		
		String data = result+":"+NickName;
		
		return data; 
	}
	@ResponseBody
	@PostMapping(value = "/login/checkLogin.do")
	public JSONObject LoginCheck(HttpServletRequest request,HttpSession session) {
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
	
	@ResponseBody
	@PostMapping(value = "/login/logoutMember.do")
	public JSONObject logoutMember(HttpServletRequest request,HttpSession session) {
		
		String _response = "";
		String alert_msg = "";
		if(session == null || session.getAttribute("loginUser") == null) {
			_response = "SUCCESS" ;
			alert_msg = "이미 로그아웃 하셨습니다" ;
		}else {
			session.removeAttribute("loginUser");
			_response = "SUCCESS";
			alert_msg = "로그아웃 되었습니다." ;
		}
		
		
		
		JSONObject jsonobject = new JSONObject();
		
		jsonobject.put("alert_msg", alert_msg);
		jsonobject.put("result_code", _response);
		System.out.println(_response);
		
		Gson gson = new Gson();
		/* return gson.toJson(jsonobject) ; */
			/* return map; */
		return jsonobject;
	}
}
