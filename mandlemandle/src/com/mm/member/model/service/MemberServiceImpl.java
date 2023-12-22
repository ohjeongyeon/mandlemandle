package com.mm.member.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.mm.common.template.Template;
import com.mm.member.model.dao.MemberDao;
import com.mm.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{

	private MemberDao memberDao = new MemberDao();
	
	@Override
	public Member loginMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member loginUser = memberDao.loginMember(sqlSession, m);
		sqlSession.close();
		return loginUser;
	}

	public int insertMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = memberDao.insertMember(sqlSession, m);
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		sqlSession.close();
		return result;
	}

	@Override
	public ArrayList searchMentor1(String search) {
//		SqlSession sqlSession = Template.getSqlSession();
//		ArrayList list = new MemberDao().searchMentor1(sqlSession, search);
//		sqlSession.close();
		return null;
	}
	@Override
	public ArrayList searchMentor2(String search) {
//		SqlSession sqlSession = Template.getSqlSession();
//		ArrayList list = new MemberDao().searchMentor2(sqlSession, search);
//		sqlSession.close();
		return null;
	}
}
