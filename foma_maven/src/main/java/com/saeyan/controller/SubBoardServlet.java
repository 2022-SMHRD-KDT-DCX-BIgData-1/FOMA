package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.foma_java_mvc_folder.domain.FMember;
import com.foma_java_mvc_folder.domain.FMemberDAO;
import com.saeyan.dao.BoardDAO;
import com.saeyan.dao.SubBoardDAO;
import com.saeyan.dto.SubBoardVO;

import java.sql.Timestamp;//날짜

public class SubBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 0. post방식 인코딩
		request.setCharacterEncoding("utf-8");
		// 1. 파라미터 수집

		System.out.println("서브보드서블렛 입장");

		int num = Integer.valueOf(request.getParameter("num"));
		String name = request.getParameter("name");
		String content = request.getParameter("content");

		Timestamp timestamp = new Timestamp(System.currentTimeMillis());// 현재 날짜
		  // 2. 수집된 데이터를 Member 객체에 담기
		SubBoardVO sbv = new SubBoardVO(num, name, content, timestamp);
		
		 // 4. FMemberDAO 가서 메소드 만들고 오기
	      // 5. FMemberDAO객체 생성 메소드 호출
	SubBoardDAO sbd = new SubBoardDAO();
		sbd.insertSubBoard(sbv);;
		 response.sendRedirect("BoardServlet?command=board_view&num="+num);
		 return;
		 
	}

}
