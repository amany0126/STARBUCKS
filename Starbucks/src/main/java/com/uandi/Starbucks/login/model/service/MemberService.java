package com.uandi.Starbucks.login.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uandi.Starbucks.login.model.mapper.MemberMapper;
import com.uandi.Starbucks.login.vo.Member;

@Service
public class MemberService {
	@Autowired MemberMapper memberMapper; 
	
	public Member loginMember(Member m) {
		// TODO Auto-generated method stub
		return memberMapper.loginMember(m);
	}

}
