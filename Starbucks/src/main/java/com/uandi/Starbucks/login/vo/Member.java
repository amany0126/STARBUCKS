package com.uandi.Starbucks.login.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class Member {
	private String memberNo;
	private String name;
	private String nickName;
	private String memberId;
	private String password;
	private String email;
	private String phoneNum;
	private String manager;
}
