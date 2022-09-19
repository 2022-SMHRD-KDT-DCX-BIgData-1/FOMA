<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>			
<%@page import="com.saeyan.dto.BoardVO"%>	
<%@page import="com.foma_java_mvc_folder.domain.Member"%>	
<%@page import="com.saeyan.dto.SubBoardVO"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<%  List<BoardVO> bd = (List<BoardVO>)session.getAttribute("selectOneBoardByNum");
List<SubBoardVO> sbd = (List<SubBoardVO>)session.getAttribute("selectAllSubBoards");
//Member loginmember = (Member)session.getAttribute("loginmember");

%>


	<div id="wrap" align="center">
		<h1>게시글 상세보기</h1>
		<table>
			<tr>
				<th>작성자</th>
				<td><%=bd.get(0).getName() %></td>
				<th>이메일</th>
				<td><%=bd.get(0).getEmail() %></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><%=bd.get(0).getWritedate() %></td>
				<th>조회수</th>
				<td><%=bd.get(0).getReadcount() %></td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"><%=bd.get(0).getTitle() %></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><pre><%=bd.get(0).getContent() %></pre></td>
			</tr>
		</table>
		<br>
		
		<form name="frm" method="post" action="SubBoardServlet">
			<input type="hidden" name="num" value="<%=bd.get(0).getNum() %>">
		<table>
	
		<%if(sbd!=null) { for(SubBoardVO s: sbd){%>
			
		<tr action="">
				<td><%=s.getName() %></td>
				<td><%=s.getContent() %>
				<td><%=s.getWritedate() %></td>
				<td><button>삭제</button></td>
			</tr>
		
		<% }
		}%>
	
<br>

			<tr action="">
				<td>아이디를 입력하세요<input name="name"></td>
				<td>댓글을 입력하세요 :<input name="content"></td>
				<td></td>
				<td><button>작성</button></td>
			</tr>
		</table>
		
	<input type="submit" value="등록">
	
	</form>
		
		
		
		<br> <br> <input type="button" value="게시글 수정"
			onclick="open_win('BoardServlet?command=board_check_pass_form&num=<%bd.get(0).getNum();%>', 'update')">
		<input type="button" value="게시글 삭제"
			onclick="open_win('BoardServlet?command=board_check_pass_form&num=<%bd.get(0).getNum();%>', 'delete')">
		<input type="button" value="게시글 리스트"
			onclick="location.href='BoardServlet?command=board_list'"> 
		<!-- 
		<input type="button" value="게시글 등록"
			onclick="location.href='BoardServlet?command=board_write_form'">
	 -->
	</div>
</body>
</html>