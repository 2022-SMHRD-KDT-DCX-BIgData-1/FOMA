package com.saeyan.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dto.BoardVO;

public class BoardViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/board/boardView.jsp";
		String num = request.getParameter("num");
		System.out.println("보드 뷰 액션 num 파라미터 값   : "+num);
		BoardDAO bDao = BoardDAO.getInstance();
		
		bDao.updateReadCount(num);
	//	BoardVO bVo = bDao.selectOneBoardByNum(num);
		
List<BoardVO> selectOneBoardByNum = bDao.selectOneBoardByNum(num);
		
        HttpSession session = request.getSession();
        session.setAttribute("selectOneBoardByNum", selectOneBoardByNum);
		
		//request.setAttribute("board", bVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
