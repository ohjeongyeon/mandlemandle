package com.mm.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.mm.board.model.vo.Board;
import com.mm.common.model.vo.PageInfo;

public class BoardDao {

	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("boardMapper.selectListCount");
	}

	public ArrayList<Board> selectList(SqlSession session, PageInfo pi) {
		/*
		 * mybatis에서는 페이징 처리를 위해 RowBounds라는 클래스를 제공
		 * * offset : 몇개의 게시글을 건너뛰고 조회할건지에 대한 값
		 * boardLimit가 5일 경우				  offset		  limit
		 * currentPage : 1 -> 1~5				0				5
		 * currentPage : 2 -> 6~10				5				5
		 * currentPage : 3 -> 11~15				10				5
		 */
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1)*limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		/*
		 * RowBounds객체를 넘겨야 할 경우 selectList메소드의 오버로딩된 메소드 중
		 * 매개변수가 3개인 메소드를 사용해야만 한다
		 * 
		 * 단, 이때 두번째 매개변수(쿼리문을 꾸밀 객체)가 필요 없다면 null값을 제시해야한다
		 */
		return (ArrayList)session.selectList("boardMapper.selectList", null, rowBounds);
	}

	public int countList(SqlSession session, int boardNo) {
		int result = session.update("boardMapper.countList",boardNo);
		return result;
	}

	public Board searchBoard(SqlSession session, int boardNo) {
		return session.selectOne("boardMapper.searchBoard",boardNo);
	}
}
