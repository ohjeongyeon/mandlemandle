package com.mm.board.model.service;

import java.util.ArrayList;

import com.mm.board.model.vo.Board;
import com.mm.common.model.vo.PageInfo;

public interface BoardService {

	int selectListCount();

	ArrayList<Board> selectList(PageInfo pi);

	int countList(int boardNo);

	Board searchBoard(int boardNo);
}
