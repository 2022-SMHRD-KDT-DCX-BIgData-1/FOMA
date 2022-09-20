<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>			
<%@page import="com.saeyan.dto.BoardVO"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
<header class="header-section d-xl-block d-none">
		<div class="container-fluid">
			<div class="header-area">
				<div class="logo">
					<a href="index.jsp"><img src="assets/images/logo/01.png"
						alt="logo"></a>
				</div>
				<div class="main-menu">
					<ul>
						<li><a href="template/test1_foodblog/FindFriends.jsp">친구찾기</a></li>

						<li><a href="">추천식단</a>
							<ul>
								<li><a href="template/test1_foodblog/recommendation2.jsp">지병에 따른 추천</a></li>
								<li><a href="template/test1_foodblog/recommendation1.jsp">음식 분류별 추천</a></li>
							</ul></li>

						<li><a href="template/test1_foodblog/SNS.jsp">SNS</a>
							<ul>
								<li><a href="board_index.jsp">게시판</a></li>
							</ul></li>

						<li><a href="template/test1_foodblog/mypage.jsp">마이페이지</a>
							<ul>
								<li><a href="#">접속한 아이디 : ${loginMember.username}</a></li>
								<li><a href="../../Login.jsp">로그아웃</a></li>
							</ul></li>
					</ul>

				</div>



			</div>
		</div>
		</div>
		</div>
		</div>
	</header>


<%  List<BoardVO> bd = (List<BoardVO>)session.getAttribute("boardList");%>

   
	<div id="wrap" align="center">
		<h1>게시글 리스트</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right">
				
				<a href="board/boardWrite.jsp">게시글 등록</a></td>
		<a href="template/test1_foodblog/index.jsp">FOMA 복귀</a></td>
		
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
				<th>좋아요</th>
			</tr>
			 <%
		//세션에서 정보가 있다면 정보를 가져와서 출력하기					
						if(bd!=null){
							for (BoardVO bv : bd) {
								%>
							<tr class="record">
					<td><%=bv.getNum()%>	</td>
					<td><a href="BoardServlet?command=board_view&num=<%=bv.getNum() %>">
							<%=bv.getTitle() %> </a></td>
					<td><%=bv.getName() %></td>
					
					<td><%=bv.getWritedate() %>></td>
				
					<td><%=bv.getReadcount() %></td>
					<td><%=bv.getGood() %></td>
				</tr>
				<% }%><%} %>
		
			<%--  원본
			<c:forEach var="board" items="${boardList }">
				<tr class="record">
					<td>${board.num}</td>
					<td><a href="BoardServlet?command=board_view&num=${board.num}">
							${board.title } </a></td>
					<td>${board.name}</td>
					
					<td><fmt:formatDate value="${board.writedate }" /></td>
				
					<td>${board.readcount}</td>
				</tr>
			</c:forEach>
			 --%>
			
			
			
		</table>
	</div>
</body>
</html>