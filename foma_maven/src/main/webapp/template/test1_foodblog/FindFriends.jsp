<%@page import="BoardListServlet.Myutil"%>
<%@page import="java.util.List"%>
<%@page import="com.foma_java_mvc_folder.domain.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.foma_java_mvc_folder.domain.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<!-- favicon -->
<link rel="shortcut icon" href="assets/images/favicon.png"
	type="image/png" />
<!-- animate scss -->
<link rel="stylesheet" href="assets/css/animate.css" />
<!-- bootstarp css -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<!-- icofont -->
<link rel="stylesheet" href="assets/css/icofont.min.css" />
<!-- lightcase css -->
<link rel="stylesheet" href="assets/css/lightcase.css" />
<!-- swiper css -->
<link rel="stylesheet" href="assets/css/swiper.min.css" />
<!-- cusyom scss -->
<link rel="stylesheet" href="assets/css/style.css" />
<link rel="stylesheet" href="assets/css/sickness.css" />
<link href="assets/css/animate.css">
<link rel="stylesheet" href="css/LikeFind.css" />
<link rel="stylesheet" href="js/LikeFind.js" />
<title>FOMA-친구찾기</title>
</head>
<body>
	<!-- preloader -->
	<div class="preloader">
		<div class="load loade">
			<hr />
			<hr />
			<hr />
			<hr />
		</div>
	</div>
	<!-- preloader -->

	<!-- header section start -->

	<header class="header-section d-xl-block d-none">
	<div class="container-fluid">
		<div class="header-area">
			<div class="logo">
				<a href="index.jsp"><img src="assets/images/logo/01.png"
					alt="logo"></a>
			</div>
			<div class="main-menu">
				<ul>
					<li><a href="FindFriends.jsp">친구찾기</a></li>

					<li><a href="">추천식단</a>
						<ul>
							<li><a href="recommendation2.jsp">지병에 따른 추천</a></li>
							<li><a href="recommendation1.jsp">음식 분류별 추천</a></li>
						</ul></li>

					<li><a href="">SNS</a>
						<ul>
							<li><a href="../../board_index.jsp">게시판</a></li>
						</ul></li>

					<li><a href="mypage.jsp">마이페이지</a>
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
	<!-- header section ending -->

	<!-- Page Header Section Start Here -->
	<section class="page-header">
	<div class="container">
		<div class="pageTitle">
			<div class="search-title">
				<h5>Add Friends</h5>
				<br>
				<form class="result" action="/foma_maven/findIdCon" method="post">
					<div class="codexcoder-selectoption">
						<input type="text" name="find" placeholder="id 입력" />
						<button type="submit" id="search">
							<img src="images/search.png" />
						</button>
						<br>
					</div>
				</form>
				<br>
			</div>
		</div>
	</div>
	</section>
	<div class="result1">
		<p>✔️검색한 아이디 목록
		<p>
			<%
			//세션에서 정보가 있다면 정보를 가져와서 출력하기
			List<Member> findIdMember = (List<Member>) session.getAttribute("findIdMember");
			%>

			<%
			//session객체에 id가 session 있으면
			if (findIdMember != null) {
				for (Member m : findIdMember) {
			%>

			<%-- <form class="result" action="/foma_maven/findIdCon" method="post">
				<%=m.getUsername()%>
					<input type="text" name="find" value="<%=m.getUsername() %>">
					<input type="hidden" name="find" > 
					<button type="submit">
					<!-- 이미지 수정 필요함! -->
						<!-- <img src="images/spinner.png" /> -->
					</button>
				</form> --%>
		<div class="result">
			<span><%=m.getUsername()%></span>
		</div>
		<br>
		<%
		}
		%>
		👉검색하신 내용이
		<%=findIdMember.size()%>
		개 검색되었습니다.
		<%
		} else {
		%>
		<%
		}
		%>
		<!--페이징 테스트 : 친구찾기페이지 -->
		<%-- <%

int pgstart =0;
int pgend = 0;
String paging="";
if(findIdMember!=null){
	request.setCharacterEncoding("utf-8");

	// 파라미터로 넘어온 페이지 번호(JSP에서 page는 예약어로 변수명으로 사용 불가)
	String pageNum = request.getParameter("page");
	int current_page = 1;
	if(pageNum != null) {
		current_page = Integer.parseInt(pageNum);
	}
	
	Myutil util = new Myutil();
	//datacount: 총데이터수 / rows: 한화면에 출력할 목록수 / total_page: 전체페이지수 
	//pagecount: int로 rows랑 datacount를 받는 변수? datacount/rows+(datacount%rows>0?1:0)
	int dataCount = findIdMember.size();
	int rows = 10;
	int total_page = util.pageCount(rows, dataCount);
	if(current_page > total_page) {
		current_page = total_page;
	}
	//listUrl: 링크를 설정할 주소
	String listUrl = "FindFriends.jsp";
	paging = util.paging(current_page, total_page, listUrl);
	
	pgstart = (current_page*10)-10;
	pgend = 10;
	
int endindex = findIdMember.size()%10;
	
	if(findIdMember.size()>10){//목록이 10개 이상

		if(findIdMember.size()-(current_page*10)>0){//남아있는 목록이 10개 이상일경우
			pgend =(current_page*10);
		}else{
			pgend = (current_page*10)-10 + endindex;
		}
	}else{
		pgend = findIdMember.size();
	}
}
%>
<%
				int endfriend = 10;
				//session객체에 id가 session 있으면
				if (findIdMember != null) {
					/* 페이징 */
					if(findIdMember.size()<6){
						endfriend = findIdMember.size();
					}
					for (Member m : findIdMember) {
				%>
			 	
		<form class="result" action="/foma_maven/findIdCon" method="post">
				<%=m.getUsername()%>
					<input type="text" name="find" value="<%=m.getUsername() %>">
					<input type="hidden" name="find" > 
					<button type="submit">
					<!-- 이미지 수정 필요함! -->
						<!-- <img src="images/spinner.png" /> -->
					</button>
				</form>
				<%=findIdMember %>
				<br>
				<%
				}
				%>
				👉검색하신 내용이 
				<%=findIdMember.size() %>
				개 검색되었습니다.
				<%
				} else {
				%>
				<%
				}
				%> --%>
	</div>
	<div class="container1">
		<!-- 페이징 처리 테스트 -->
		<%-- <div style="padding-top: 	20px;">
	
		<%= paging %>
	
	</div> --%>
		<!-- <div class="FindingFriends">
      <div id="fb">
        <div id="fb-top">
          <p><b>Friend Requests</b><span>Find Friends &bull; Settings</span></p>
        </div>
        <a href="#">
          <img src="assets/images/gallery/01.jpg" height="100"
				width="100" alt="Image of woman" />
          <p id="info">
            <b>User Name</b> <br>
            <span>14 mutual friends
          </p>
        </a><div id="b
		utton-block">
          <div id="confirm">Confirm</div>
          <div id="delete">Delete Request</div>
        </div>
      
		</div> -->
		<%-- <table>
				     	<tr>
				     		<th>아이디<br></th>
				     		<td><input type="text" name="find" id="name" value="<% String username = request.getParameter("find");
				     				if (username != null) out.println(username);%>">
				     		</td>
				     		<td><input type="submit" value="친구찾기"></td>
				     			<% MemberDAO dao = new MemberDAO();%>
				     			<% String findIdMember = (String)session.getAttribute("findIdMember");%>
				     			<%
				     			if(findIdMember != null){ 
				     			%>
				     	</tr>
				     	<tr>
				     		<td colspan="6">
				     			<p>검색한 친구들 리스트</p>
				     			<p>아이디</p>
				     			<input type="text" name="find" value="<%=findIdMember %>">
				     			<%=findIdMember  %>
				     		</td>
				     	</tr>
				     	<br>
				     		<%
				     			}else{
				     		%>
				     			아이디를 검색해주세요! --%>
		<%-- <%}%> --%>
		<!-- </table> -->
	</div>
	</div>
	</div>


	<!-- Page Header Section Ending Here -->
	<!-- Popular Home Chef Section Start Here -->
	<div class="FindingFriends">
		<div id="fb">
			<!-- <div id="fb-top">
          <p><b>Friend Requests</b><span>Find Friends &bull; Settings</span></p>
        </div> -->
			<a href="#"> <img src="assets/images/gallery/01.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br />
					<!-- <span>14 mutual friends -->
				</p>
			</a>
			<div id="button-block">
				<div id="confirm">Confirm</div>
				<!-- <div id="delete">Delete Request</div> -->
			</div>
		</div>
		<div id="fb">
			<a href="#"> <img src="assets/images/gallery/02.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br />
				</p>
			</a>
			<div id="button-block">
				<div id="confirm">Confirm</div>
			</div>
		</div>
		<div id="fb">
			<a href="#"> <img src="assets/images/gallery/03.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br />
				</p>
			</a>
			<div id="button-block">
				<div id="confirm">Confirm</div>
			</div>
		</div>
		<div id="fb">
			<a href="#"> <img src="assets/images/gallery/04.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br />
				</p>
			</a>
			<div id="button-block">
				<div id="confirm">Confirm</div>
			</div>
		</div>
		<div id="fb">
			<a href="#"> <img src="assets/images/gallery/05.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br />
				</p>
			</a>
			<div id="button-block">
				<div id="confirm">Confirm</div>
			</div>
		</div>
		<div id="fb">
			<a href="#"> <img src="assets/images/gallery/06.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br /></a>
			</p>
			<div id="button-block">
				<div id="confirm">Confirm</div>
			</div>
		</div>
	</div>
	<!-- Popular Home Chef Section Ending Here -->
	<!-- Footer Section Start Here -->
	<footer class="footer">
	<div class="bg-shape-style"></div>
	<div class="container">
		<div class="footer-bottom text-center">
			<p>
				&copy; 2019 <a href="http://www.bootstrapmb.com/"><span>Mezban</span></a>Design
				by <a href="#"><span>FoxCoders</span></a>.
			</p>
		</div>
	</div>
	</footer>
	<!-- Footer Section Ending Here -->
	<!-- scrollToTop start here -->
	<a href="#" class="scrollToTop"><i class="icofont-swoosh-up"></i></a>
	<!-- scrollToTop ending here -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/waypoints.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/isotope.pkgd.min.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/swiper.min.js"></script>
	<script src="assets/js/lightcase.js"></script>
	<script src="assets/js/jquery.counterup.min.js"></script>
	<script src="assets/js/functions.js"></script>
</body>
</html>