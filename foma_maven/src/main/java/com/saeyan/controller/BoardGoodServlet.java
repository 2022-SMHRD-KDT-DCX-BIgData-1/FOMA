package com.saeyan.controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dao.SubBoardDAO;
import com.saeyan.dto.SubBoardVO;


public class BoardGoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		// 1. 파라미터 수집

		System.out.println("좋아요 서블릿 입장");

		
		int num = Integer.valueOf(request.getParameter("num"));
		
		
		// 2. 수집된 데이터를 Member 객체에 담기
		
		SubBoardDAO bd = new SubBoardDAO();
		
		bd.updategood(num);
		
		response.sendRedirect("BoardServlet?command=board_view&num=" + num);
		return;
		
		
	}

}
