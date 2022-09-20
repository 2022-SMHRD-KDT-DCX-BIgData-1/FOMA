<%@page import="java.util.List"%>
<%@page import="com.foma_java_mvc_folder.domain.FMember"%>
<%@page import="com.foma_java_mvc_folder.Controller.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- favicon -->
<link rel="shortcut icon" href="assets/images/favicon.png"
	type="image/png">
<!-- animate scss -->
<link rel="stylesheet" href="assets/css/animate.css">
<!-- bootstarp css -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<!-- icofont -->
<link rel="stylesheet" href="assets/css/icofont.min.css">
<!-- lightcase css -->
<link rel="stylesheet" href="assets/css/lightcase.css">
<!-- swiper css -->
<link rel="stylesheet" href="assets/css/swiper.min.css">
<!-- custom css -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="shop.css">
<title>FOMA-검색한 음식 표시</title>
</head>

<body>
	<!--음식정보 출력 멤버 선언 -->
	<%
	ArrayList<FMember> f = (ArrayList<FMember>) session.getAttribute("selectFMember");
	fd_select_web fdweb = new fd_select_web();
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
	<!-- Mobile Menu Start Here -->
	<div class="mobile-menu">
		<nav class="mobile-header d-xl-none">
			<div class="header-logo">
				<a href="index.html" class="logo"><img
					src="assets/images/logo/01.png" alt="logo"></a>
			</div>
			<div class="header-bar">
				<span></span><span></span><span></span>
			</div>
		</nav>
		<nav class="menu">
			<div class="mobile-menu-area d-xl-none">
				<div class="mobile-menu-area-inner scrollbar">
					<div class="mobile-search">
						<input type="text" placeholder="Search Here.........">
						<button type="submit">
							<i class="icofont-search-2"></i>
						</button>
					</div>
					<ul>
						<li><a href="#0">Home</a>
							<ul>
								<li><a href="index.html">Home Page One</a></li>
								<li><a href="index-2.html">Home Page Two</a></li>
								<li><a href="index-3.html">Home Page Three</a></li>
								<li><a href="index-4.html">Home Page Four</a></li>
							</ul></li>
						<li><a href="about.html">About</a></li>
						<li><a href="#0">Pages</a>
							<ul>
								<li><a href="#0">Category</a>
									<ul>
										<li><a href="food-menu.html">Food Category</a></li>
										<li><a href="menu-card.html">Category style 1</a></li>
										<li><a href="menu-card-2.html">Category style 2</a></li>
									</ul></li>
								<li><a href="#0">Chef</a>
									<ul>
										<li><a href="homechef.html">Home Chef</a></li>
										<li><a href="homechef-single.html">Home Chef Single</a></li>
									</ul></li>
								<li><a href="recepi-single.html">Single Recipe</a></li>
								<li><a href="404.html">404 Page</a></li>
								<li><a href="coming-soon.html">Coming Soon Page</a></li>
							</ul></li>
						<li><a href="#0">Blog</a>
							<ul>
								<li><a href="blog.html">Blog</a></li>
								<li><a href="blog-single.html">Blog Single</a></li>
							</ul></li>
						<li><a class="active" href="#0">Shop</a>
							<ul>
								<li><a href="shop-page.html">Shop Page</a></li>
								<li><a class="active" href="shop-single.html">Shop
										Single style-1</a></li>
								<li><a href="shop-single-2.html">Shop Single style-2</a></li>
								<li><a href="cart-page.html">Cart Page</a></li>
							</ul></li>
						<li><a href="contact-us.html">Contact</a></li>
					</ul>
					<div class="scocial-media">
						<a href="#" class="facebook"><i class="icofont-facebook"></i></a><a
							href="#" class="twitter"><i class="icofont-twitter"></i></a><a
							href="#" class="linkedin"><i class="icofont-linkedin"></i></a><a
							href="#" class="vimeo"><i class="icofont-vimeo"></i></a>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- Mobile Menu Ending Here -->
	<header class="header-section d-xl-block d-none">
		<div class="container-fluid">
			<div class="header-area">
				<div class="logo">
					<a href="index.jsp"><img src="assets/images/logo/01.png"
						alt="logo"></a>
				</div>
				<div class="main-menu">
					<ul>
						<li><a href="FindFriends.html">친구찾기</a></li>

						<li><a href="">추천식단</a>
							<ul>
								<li><a href="recommendation2.html">지병에 따른 추천</a></li>
								<li><a href="recommendation1.html">음식 분류별 추천</a></li>
							</ul></li>

						<li><a href="SNS.html">SNS</a>
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
	<!-- Page Header Section Ending Here -->
	<!-- Popular Home Chef Section Start Here -->
	<div class="shop-page single padding-tb pb-0">
		<div class="container">
			<div class="section-wrapper">
				<article>
					<div class="row1">
						<div class="column">
							


								<%
								//세션에서 정보가 있다면 정보를 봅아서 출력하기					
								if (f != null) {
								%>
								<h4><%=f.get(0).getFd_name()%></h4>
								<%
								}
								%>
								<br>
								<div class="shop-item">
									<div class="shop-thumb">
										<!-- 
															<img src="assets/images/popular-food/01.jpg"
															 -->
										<img src="<%=fdweb.fdselectweb(f.get(0).getFd_name())%>"
											alt="shop-single">
									</div>
								</div>
							
						</div>
						<div class="column">
							

								<div class="title">
									<!-- 음식 정보 출력단 -->
									<!--음식 분류  -->
									<h5>
										<a href="#"><%=f.get(0).getFd_category_big_name()%></a>
									</h5>

									<div class="type-of-food">
										<span>✔️Type of food :</span> <a href="#"><%=f.get(0).getFd_general_name()%></a>
										<%-- <a href="#"><%=f.get(0).getFd_category_small_name() %></a>
                                                <a href="#"><%=f.get(0).getFd_category_micro_name() %></a></div>
                                                <div class="rating"><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i><span>(2
                                                        Customer Reviews)</span></div> --%>
									</div>
								</div>
								<div class="desc">
									<!--음식 영양소 , 조건문을 통해 자료없음을 표시해줘야한다. -->
									<table>
										<tr>
											<td>칼로리(kcal) :</td>
											<td><%=Math.round(f.get(0).getFd_ing_cal())%></td>
										</tr>
										<tr>
											<td>단백질(g) :</td>
											<td><%=Math.round(f.get(0).getFd_ing_protein())%></td>
										</tr>
										<tr>
											<td>탄수화물(g) :</td>
											<td><%=Math.round(f.get(0).getFd_ing_carbohydrate())%></td>
										</tr>
										<tr>
											<td>포화지방(g) :</td>
											<td><%=String.format("%10.2f", (f.get(0).getFd_ing_saturated_fatty() * 100) / 100.0)%></td>
										</tr>
										<tr>
											<td>트랜스지방(g) :</td>
											<td><%=String.format("%10.2f", (f.get(0).getFd_ing_trans_fatty() * 100) / 100.0)%></td>
										</tr>
										<tr>
											<td>총 지방(g) :</td>
											<td><%=Math.round(f.get(0).getFd_ing_fatty())%></td>
										</tr>
										<tr>
											<td>나트륨(mg) :</td>
											<td><%=Math.round(f.get(0).getFd_ing_salt())%></td>
										</tr>
										<tr>
											<td>당류(g) :</td>
											<td><%=String.format("%10.2f", (f.get(0).getFd_ing_sugar() * 100) / 100.0)%></td>
										</tr>
										<tr>
											<td>1회섭취량 :</td>
											<td><%=f.get(0).getFd_intake_once()%></td>
										</tr>
									</table>
									<%-- <c:choose>
                                            <c:when test="${f.get(0).getFd_ing_dietaryfiber() ne -1}">
                                           <p>식이섬유 : 자료없음<p>
                                            </c:when>
                                            <c:otherwise>
                                            <p>식이섬유 : <%=f.get(0).getFd_ing_dietaryfiber()%></p>
                                            	</c:otherwise>
                                            	 </c:choose>
                                             <c:choose>
                                            <c:when test="${f.get(0).getFd_intake_once() ne -1}">
                                           <p>1회 섭취량 : 자료없음<p>
                                            </c:when>
                                            <c:otherwise>
                                            <p>1회섭취량 : <%=f.get(0).getFd_intake_once()%></p>
                                            	</c:otherwise>
                                            	 </c:choose>	 --%>




									<!-- <ul>
                                                    <li>20 MP front & 28 megapixel CMOS rear camera</li>
                                                    <li>4.5 inch HD Touch Screen (1280 x 720)</li>
                                                    <li>1.4 GHz Quad Core™ Processor</li>
                                                    <li>Android 4.4 KitKat OS</li>
                                                </ul>
                                                <div class="quyality">
                                                    <p><span>SKU</span>: FW511948218</p>
                                                </div> -->
								</div>
							
						</div>
					</div>
				</article>
			</div>
		</div>
	</div>
	<!-- Popular Home Chef Section Ending Here -->
	<!-- Review Section Start Here -->
	<!-- Review Section Ending Here -->
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
	<script src="assets/js/tab.js"></script>
	<script src="assets/js/lightcase.js"></script>
	<script src="assets/js/swiper.min.js"></script>
	<script src="assets/js/jquery.counterup.min.js"></script>
	<script src="assets/js/functions.js"></script>
</body>

</html>