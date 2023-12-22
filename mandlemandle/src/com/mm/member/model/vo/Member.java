package com.mm.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
@ToString
@Builder
public class Member {
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String address;
	private String phone;
	private String email;
	private String residentNo;
	private Date enterdate;
	private Date modifyDate;
	private String gender;
	private Date connectDate;
	private int userDivide;
	private int grade;
	private String status;
}
