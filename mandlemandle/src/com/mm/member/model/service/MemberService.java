package com.mm.member.model.service;

import java.util.ArrayList;

import com.mm.member.model.vo.Member;

// 인터페이스 : 상수필드 (public static final) + 추상메소드 (public abstract)
public interface MemberService {
	Member loginMember(Member m);
	int insertMember(Member m);
	ArrayList searchMentor1(String search);
	ArrayList searchMentor2(String search);
}
