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

						<li><a href="SNS.jsp">SNS</a>
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
			<div class = "search-title">
            <h5>Add Friends</h5>
            <hr>
				<form class="result" action="/foma_maven/findIdCon" method="post">
				<div class="codexcoder-selectoption">
					<input type="text" name="find" placeholder="id 입력" />
					        <button type="submit" id="search">
					                <img src="images/search.png" />
					        </button><br>
				</div>
				</form>
				<br>
				<p>✔️검색한 아이디 목록<p>					
				<% //세션에서 정보가 있다면 정보를 가져와서 출력하기
				List<Member> findIdMember = (List<Member>)session.getAttribute("findIdMember");%>
				<%
				//session객체에 id가 session 있으면
				if (findIdMember != null) {
					for(Member m: findIdMember){
				%>
				<form class="result" action="/foma_maven/findIdCon" method="post">
				<%= m.getUsername() %>
					<input type="text" name="find" <%-- value="<%=f %>" --%>>
					<%-- <%=findIdMember %> --%>
					<input type="hidden" name="find" > 
					<button type="submit" value="친구 찾기">
						<img src="images/spinner.png" />
					</button>
				</form>
				<br>
				<%
				}
				%>
				<%
				}else {
				%>
				아이디를 검색해주세요!
				<%
				}
				%>
				
				<div class="FindingFriends">
      <div id="fb">
        <!-- <div id="fb-top">
          <p><b>Friend Requests</b><span>Find Friends &bull; Settings</span></p>
        </div> -->
        <a href="#">
          <img
            src="assets/images/gallery/01.jpg"
            height="100"
            width="100"
            alt="Image of woman"
          />
          <p id="info">
            <b>User Name</b> <br>
            <!-- <span>14 mutual friends -->
          </p>
        </a>
        <div id="button-block">
          <div id="confirm">Confirm</div>
          <!-- <div id="delete">Delete Request</div> -->
        </div>
      </div>
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
	</section>
				     
    <!-- Page Header Section Ending Here -->
    <!-- Popular Home Chef Section Start Here -->
    <div class="FindingFriends">
      <div id="fb">
        <!-- <div id="fb-top">
          <p><b>Friend Requests</b><span>Find Friends &bull; Settings</span></p>
        </div> -->
        <a href="#">
          <img
            src="assets/images/gallery/01.jpg"
            height="100"
            width="100"
            alt="Image of woman"
          />
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
        <a href="#">
          <img
            src="assets/images/gallery/02.jpg"
            height="100"
            width="100"
            alt="Image of woman"
          />
          <p id="info"><b>User Name</b> <br /></p>
        </a>
        <div id="button-block">
          <div id="confirm">Confirm</div>
        </div>
      </div>
      <div id="fb">
        <a href="#">
          <img
            src="assets/images/gallery/03.jpg"
            height="100"
            width="100"
            alt="Image of woman"
          />
          <p id="info"><b>User Name</b> <br /></p>
        </a>
        <div id="button-block">
          <div id="confirm">Confirm</div>
        </div>
      </div>
      <div id="fb">
        <a href="#">
          <img
            src="assets/images/gallery/04.jpg"
            height="100"
            width="100"
            alt="Image of woman"
          />
          <p id="info"><b>User Name</b> <br /></p>
        </a>
        <div id="button-block">
          <div id="confirm">Confirm</div>
        </div>
      </div>
      <div id="fb">
        <a href="#">
        <img
          src="assets/images/gallery/05.jpg"
          height="100"
          width="100"
          alt="Image of woman"
        />
        <p id="info">
          <b>User Name</b> <br />
        </p>
      </a>
        <div id="button-block">
          <div id="confirm">Confirm</div>
        </div>
      </div>
      <div id="fb">
        <a href="#">
        <img
          src="assets/images/gallery/06.jpg"
          height="100"
          width="100"
          alt="Image of woman"
        />
        <p id="info">
          <b>User Name</b> <br />
        </a>
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
	<a href="#" class="scrollToTop"><i
		class="icofont-swoosh-up"></i></a>
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