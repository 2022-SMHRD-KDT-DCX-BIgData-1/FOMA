package com.saeyan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.saeyan.*;
import com.saeyan.dao.SubBoardDAO;
import com.saeyan.dto.imageVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class UploadServlet
 */
//@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		// 여기를 바꿔주면 다운받는 경로가 바뀜
		String savePath = "fomaimages";
		// 최대 업로드 파일 크기 5MB로 제한
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리 :");
		System.out.println(uploadFilePath);
		
		
		
		try {
			MultipartRequest multi = new MultipartRequest(request, // request 객체
					uploadFilePath, // 서버상의 실제 디렉토리
					uploadFileSizeLimit, // 최대 업로드 파일 크기
					encType, // 인코딩 방법
					// 동일한 이름이 존재하면 새로운 이름이 부여됨
					new DefaultFileRenamePolicy());
			// 업로드된 파일의 이름 얻기
			String fileName = multi.getFilesystemName("uploadFile");
			
			
			//추가부분
			HttpSession session = request.getSession();
	        List<String> imagelist=   (List<String>) session.getAttribute("imagelist");
			//0 글쓴이 1 글제목
			imagelist.add(fileName);//파일이름
			imagelist.add(uploadFilePath);//파일 위치
			session.setAttribute("imagelist", imagelist);
			
		    imageVO vo = new imageVO(imagelist.get(0), imagelist.get(1), fileName, uploadFilePath);
		    
		    SubBoardDAO sdao = new SubBoardDAO();
		    sdao.insertimage(vo);
		    //
		      
			
			if (fileName == null) { // 파일이 업로드 되지 않았을때
				System.out.print("파일 업로드 되지 않았음");
			} else { // 파일이 업로드 되었을때
				out.println("<br> 글번호 : " + multi.getParameter("num"));
				//out.println("<br> 제 &nbsp; 목 : " + multi.getParameter("title"));
				out.println("<br> 파일명 : " + fileName);
			}// else
		} catch (Exception e) {
			System.out.print("예외 발생 : " + e);
		}// catch
		
		response.sendRedirect("BoardServlet?command=board_list");
		
	}

}
