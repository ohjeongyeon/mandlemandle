package com.mm.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.mm.member.model.vo.Member;

public class MemberDao {

	public Member loginMember(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember",m);
	}

	public int insertMember(SqlSession sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember",m);
	}

//	public ArrayList searchMentor1(SqlSession sqlSession, String search) {
//		return (ArrayList)sqlSession.selectList("memberMapper.searchMentor1",search);
//	}
//	public ArrayList searchMentor2(SqlSession sqlSession, String search) {
//		return (ArrayList)sqlSession.selectList("memberMapper.searchMentor2",search);
//	}
}
