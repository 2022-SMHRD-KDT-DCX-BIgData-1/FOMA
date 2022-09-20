<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="java.util.List"%>
<%@page import="com.foma_java_mvc_folder.domain.FMember"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
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
<title>지병 음식추천</title>
</head>
<body>
	<!--음식정보 출력 멤버 선언 -->
                                             <%
              ArrayList<FMember> f = (ArrayList<FMember>)session.getAttribute("selectFMember");
			  %>  
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
	<!-- Banner Section Start Here -->
	<section class="banner">

		<div class="banner-area">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-12">
						<div class="banner-content">

							<form action="/foma_maven/SelectfdCon2" method="post">
								<div class="codexcoder-selectoption">
									<select name="selectcode">
										<option value="hbp">고혈압 검색 </option>
										<option value="diabe" >당뇨 검색</option>
										<option value="hyperlip">고지혈증 검색</option>
										<option value="obesity">비만 검색</option>
										<option value="myoinfar">심근경색 검색</option>
									</select>
								</div>
								<input type="text" name="fd_name" placeholder="검색하고 싶은 지병을 선택하고 검색해주세요!">
								<button type="submit">
									<i class="icofont-search-2"></i>
								</button><br>
							</form>
							<%
							ArrayList<FMember> selectFMember = (ArrayList<FMember>) session.getAttribute("selectFMember");
							%>
							<%
							//세션에서 정보가 있다면 정보를 가져와서 출력하기					
							if (selectFMember != null) {
								for (FMember fd : selectFMember) {
							%>
							<%-- <a href = "shop-single.jsp"> <%=	f.getFd_name()%></a>
								 --%>
							<form class="reselt" action="/foma_maven/SelectfdCon" method="post">
								<%
								String str = fd.getFd_name();
								%>
								<input type="text" name="fd_name" value="<%=str%>">
								<!--같이 값을 보내줄 셀렉트코드를 히든값으로 지정한다. 한개검색  -->
								<input type="hidden" name="selectcode" value="one"> <label>
									자세한 정보 클릭!
									<button type="submit">
										<i class="icofont-search-2"></i>
									</button>
								</label>
							</form>
							<br>
							<%
							}
							%>
							<%
							} else {
							%>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- <section class="page-header">
		<div class="container">
			<div class="page-title-text-center3">
				<form action="">
						<input type="checkbox" name="sickness" value="고혈압" /> 고혈압 
						<input type="checkbox" name="sickness" value="당뇨" /> 당뇨 
						<input type="checkbox" name="sickness" value="고지혈증" /> 고지혈증 
						<input type="checkbox" name="sickness" value="병명" /> 비만 
						<input type="checkbox" name="sickness" value="심근경색" />심근경색
					<button type="submit" value="선택">검색</button>
				</form>
			</div>
		</div>
	</section> -->
	<!-- Page Header Section Ending Here -->
	
	<!-- Popular Food Section Start Here -->
	<div class="containerPost">
		<div class="postPage">
			<div class="post">
				<div class="idPic">
					<a href="#"> <img src="images/user.png" /> <span>
							Username </span>
					</a>
				</div>
				<div class="options">
					<!-- <button class="left"><img src="images/previous.png"></button> -->
					<ul class="images">
						<li><img src="assets/images/gallery/01.jpg" alt="image" /></li>
						<!-- <li><img src="assets/images/gallery/02.jpg" alt="image" /></li>
              <li><img src="assets/images/gallery/03.jpg" alt="image" /></li> -->
					</ul>
					<!-- <button class="right"><img src="images/next.png"></button> -->
				</div>
				<div class="likePart">
					<div class="like">
						<button>
							<img src="images/heart.png" />
						</button>
						<span>12 likes</span>
					</div>
				</div>
				<div class="caption">
					<span>내용........</span> <br>
				</div>
				<div class="comment">
					<div class="commentList">
						<ul>
							<a href="#"> username </a> Comment section list
						</ul>
					</div>
					<div class="inputCom">
						<input type="text" name="comment" id="comments" />
						<button type="submit">
							<img src="images/comment.png" />
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="postPage">
			<div class="post">
				<div class="idPic">
					<a href="#"> <img src="images/user.png" /> <span>
							Username </span>
					</a>
				</div>
				<div class="options">
					<!-- <button class="left"><img src="images/previous.png" /></button> -->
					<ul class="images">
						<li><img src="assets/images/gallery/01.jpg" alt="image" /></li>
						<!-- <li><img src="assets/images/gallery/02.jpg" alt="image" /></li>
              <li><img src="assets/images/gallery/03.jpg" alt="image" /></li> -->
					</ul>
					<!-- <button class="right"><img src="images/next.png" /></button> -->
				</div>
				<div class="likePart">
					<div class="like">
						<button>
							<img src="images/heart.png" />
						</button>
						<span>12 likes</span>
					</div>
				</div>
				<div class="caption">
					<span>내용........</span> <br>
				</div>
				<div class="comment">
					<div class="commentList">
						<ul>
							<a href="#"> username </a> Comment section list
						</ul>
					</div>
					<div class="inputCom">
						<input type="text" name="comment" id="comments" />
						<button type="submit">
							<img src="images/comment.png" />
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="postPage">
			<div class="post">
				<div class="idPic">
					<a href="#"> <img src="images/user.png" /> <span>
							Username </span>
					</a>
				</div>
				<div class="options">
					<!-- <button class="left"><img src="images/previous.png" /></button> -->
					<ul class="images">
						<li><img src="assets/images/gallery/01.jpg" alt="image" /></li>
						<!-- <li><img src="assets/images/gallery/02.jpg" alt="image" /></li>
              <li><img src="assets/images/gallery/03.jpg" alt="image" /></li> -->
					</ul>
					<!-- <button class="right"><img src="images/next.png" /></button> -->
				</div>
				<div class="likePart">
					<div class="like">
						<button>
							<img src="images/heart.png" />
						</button>
						<span>12 likes</span>
					</div>
				</div>
				<div class="caption">
					<span>내용........</span> <br>
				</div>
				<div class="comment">
					<div class="commentList">
						<ul>
							<a href="#"> username </a> Comment section list
						</ul>
					</div>
					<div class="inputCom">
						<input type="text" name="comment" id="comments" />
						<button type="submit">
							<img src="images/comment.png" />
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="postPage">
			<div class="post">
				<div class="idPic">
					<a href="#"> <img src="images/user.png" /> <span>
							Username </span>
					</a>
				</div>
				<div class="options">
					<!-- <button class="left"><img src="images/previous.png" /></button> -->
					<ul class="images">
						<li><img src="assets/images/gallery/01.jpg" alt="image" /></li>
						<!-- <li><img src="assets/images/gallery/02.jpg" alt="image" /></li>
              <li><img src="assets/images/gallery/03.jpg" alt="image" /></li> -->
					</ul>
					<!-- <button class="right"><img src="images/next.png" /></button> -->
				</div>
				<div class="likePart">
					<div class="like">
						<button>
							<img src="images/heart.png" />
						</button>
						<span>12 likes</span>
					</div>
				</div>
				<div class="caption">
					<span>내용........</span> <br>
				</div>
				<div class="comment">
					<div class="commentList">
						<ul>
							<a href="#"> username </a> Comment section list
						</ul>
					</div>
					<div class="inputCom">
						<input type="text" name="comment" id="comments" />
						<button type="submit">
							<img src="images/comment.png" />
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="postPage">
			<div class="post">
				<div class="idPic">
					<a href="#"> <img src="images/user.png" /> <span>
							Username </span>
					</a>
				</div>
				<div class="options">
					<!-- <button class="left"><img src="images/previous.png" /></button> -->
					<ul class="images">
						<li><img src="assets/images/gallery/01.jpg" alt="image" /></li>
						<!-- <li><img src="assets/images/gallery/02.jpg" alt="image" /></li>
              <li><img src="assets/images/gallery/03.jpg" alt="image" /></li> -->
					</ul>
					<!-- <button class="right"><img src="images/next.png" /></button> -->
				</div>
				<div class="likePart">
					<div class="like">
						<button>
							<img src="images/heart.png" />
						</button>
						<span>12 likes</span>
					</div>
				</div>
				<div class="caption">
					<span>내용........</span> <br>
				</div>
				<div class="comment">
					<div class="commentList">
						<ul>
							<a href="#"> username </a> Comment section list
						</ul>
					</div>
					<div class="inputCom">
						<input type="text" name="comment" id="comments" />
						<button type="submit">
							<img src="images/comment.png" />
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="postPage">
			<div class="post">
				<div class="idPic">
					<a href="#"> <img src="images/user.png" /> <span>
							Username </span>
					</a>
				</div>
				<div class="options">
					<!-- <button class="left"><img src="images/previous.png" /></button> -->
					<ul class="images">
						<li><img src="assets/images/gallery/01.jpg" alt="image" /></li>
						<!-- <li><img src="assets/images/gallery/02.jpg" alt="image" /></li>
              <li><img src="assets/images/gallery/03.jpg" alt="image" /></li> -->
					</ul>
					<!-- <button class="right"><img src="images/next.png" /></button> -->
				</div>
				<div class="likePart">
					<div class="like">
						<button>
							<img src="images/heart.png" />
						</button>
						<span>12 likes</span>
					</div>
				</div>
				<div class="caption">
					<span>내용........</span> <br>
				</div>
				<div class="comment">
					<div class="commentList">
						<ul>
							<a href="#"> username </a> Comment section list
						</ul>
					</div>
					<div class="inputCom">
						<input type="text" name="comment" id="comments" />
						<button type="submit">
							<img src="images/comment.png" />
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Popular Food Section Ending Here -->
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