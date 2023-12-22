package com.mm.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mm.member.model.service.MemberService;
import com.mm.member.model.service.MemberServiceImpl;

/**
 * Servlet implementation class MentorSearchController
 */
@WebServlet("/search.me")
public class MentorSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MentorSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService service = new MemberServiceImpl();
		String search = request.getParameter("search");
		ArrayList list1 = service.searchMentor1(search);
		ArrayList list2 = service.searchMentor2(search);
		if(list1 == null) {
			if(list2 == null) {
				request.setAttribute("list1", null);
				request.setAttribute("list2", null);
			} else {
				request.setAttribute("list1", null);
				request.setAttribute("list2", list2);
			}
		} else {
			request.setAttribute("list1", list1);
			request.setAttribute("list2", list2);
		}
		request.getRequestDispatcher("WEB-INF/views/common/search.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
