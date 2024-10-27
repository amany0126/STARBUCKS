package com.uandi.Starbucks.login.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.uandi.Starbucks.login.vo.Member;

@Mapper
public interface MemberMapper {
	 Member loginMember(Member m) ;


}
