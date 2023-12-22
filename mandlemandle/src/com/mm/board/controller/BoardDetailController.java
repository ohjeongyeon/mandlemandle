package com.mm.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mm.board.model.service.BoardService;
import com.mm.board.model.service.BoardServiceImpl;
import com.mm.board.model.vo.Board;

/**
 * Servlet implementation class BoardDetailController
 */
@WebServlet("/detail.bo")
public class BoardDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		1. 조회수 증가서비스 호출
		BoardService service = new BoardServiceImpl();
		int boardNo = Integer.parseInt(request.getParameter("bno"));
		int result = service.countList(boardNo);
		
//		2. 게시글 생세조회 서비스 호출
		Board b = service.searchBoard(boardNo);
		request.setAttribute("b", b);
		
//		request스코프에 게시글 저장 후 페이지 전환
		request.getRequestDispatcher("WEB-INF/views/board/boardDetailView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
