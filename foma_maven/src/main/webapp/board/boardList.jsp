<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>			
<%@page import="com.saeyan.dto.BoardVO"%>	
<%@page import="BoardListServlet.Myutil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<link rel="stylesheet" type="text/css" href="css/pagekim.css">
<style type="text/css">
	
</style>
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
<!--페이징 테스트  -->
<%
	request.setCharacterEncoding("utf-8");

	// 파라미터로 넘어온 페이지 번호(JSP에서 page는 예약어로 변수명으로 사용 불가)
	String pageNum = request.getParameter("page");
	int current_page = 1;
	if(pageNum != null) {
		current_page = Integer.parseInt(pageNum);
	}
	
	Myutil util = new Myutil();
	
	int dataCount = bd.size();
	int rows = 10;
	int total_page = util.pageCount(rows, dataCount);
	if(current_page > total_page) {
		current_page = total_page;
	}
	
	String listUrl = "BoardServlet?command=board_list";
	String paging = util.paging(current_page, total_page, listUrl);
	
	int pgstart = (current_page*10)-10;
	int pgend = 10;
	
int endindex = bd.size()%10;
	
	if(bd.size()>10){//목록이 10개 이상

		if(bd.size()-(current_page*10)>0){//남아있는 목록이 10개 이상일경우
			pgend =(current_page*10);
		}else{
			pgend = (current_page*10)-10 + endindex;
		}

		
		
		
	}else{
		pgend = bd.size();
	}
%>

 <!--페이징 테스트  -->  
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
							for (int i=pgstart;i<pgend;i++) {
								%>
							<tr class="record">
					<td><%=bd.get(i).getNum()%>	</td>
					<td><a href="BoardServlet?command=board_view&num=<%=bd.get(i).getNum() %>">
							<%=bd.get(i).getTitle() %> </a></td>
					<td><%=bd.get(i).getName() %></td>
					
					<td><%=bd.get(i).getWritedate() %>></td>
				
					<td><%=bd.get(i).getReadcount() %></td>
					<td><%=bd.get(i).getGood() %></td>
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
		<div class="container">
	<!-- 
	<h3 style="text-align: center;">페이징 처리 테스트</h3>
	 -->
	<div style="padding-top: 	20px;">
		<%= paging %>
	</div>
	
	
	
</div>
	</div>
</body>
</html>