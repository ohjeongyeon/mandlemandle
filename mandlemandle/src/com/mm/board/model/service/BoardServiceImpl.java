package com.mm.board.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.mm.board.model.dao.BoardDao;
import com.mm.board.model.vo.Board;
import com.mm.common.model.vo.PageInfo;
import com.mm.common.template.Template;

public class BoardServiceImpl implements BoardService{
	BoardDao boardDao = new BoardDao();
	@Override
	public int selectListCount() {
		SqlSession sqlSession = Template.getSqlSession();
		int listCount = boardDao.selectListCount(sqlSession);
		sqlSession.close();
		return listCount;
	}
	@Override
	public ArrayList<Board> selectList(PageInfo pi) {
		SqlSession session = Template.getSqlSession();
		ArrayList<Board> list = boardDao.selectList(session, pi);
		session.close();
		return list;
	}
	@Override
	public int countList(int boardNo) {
		SqlSession session = Template.getSqlSession();
		int result = boardDao.countList(session, boardNo);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		return result;
	}
	@Override
	public Board searchBoard(int boardNo) {
		SqlSession session = Template.getSqlSession();
		Board b = boardDao.searchBoard(session, boardNo);
		session.close();
		return b;
	}
}
