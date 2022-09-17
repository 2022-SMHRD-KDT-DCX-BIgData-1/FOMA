<%@page import="java.util.List"%>
<%@page import="com.foma_java_mvc_folder.domain.FMember"%>
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
<meta name="description"
	content="Magz is a HTML5 & CSS3 magazine template is based on Bootstrap 3.">
<meta name="author" content="Kodinger">
<meta name="keyword"
	content="magz, html5, css3, template, magazine template">
<!-- Shareable -->
<meta property="og:title"
	content="HTML5 & CSS3 magazine template is based on Bootstrap 3" />
<meta property="og:type" content="article" />
<meta property="og:url" content="http://github.com/nauvalazhar/Magz" />
<meta property="og:image"
	content="https://raw.githubusercontent.com/nauvalazhar/Magz/master/images/preview.png" />
<title>FOMA</title>
<!-- Bootstrap -->
<link rel="stylesheet" href="scripts/bootstrap/bootstrap.min.css">
<!-- IonIcons -->
<link rel="stylesheet" href="scripts/ionicons/css/ionicons.min.css">
<!-- Toast -->
<link rel="stylesheet" href="scripts/toast/jquery.toast.min.css">
<!-- OwlCarousel -->
<link rel="stylesheet"
	href="scripts/owlcarousel/dist/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="scripts/owlcarousel/dist/assets/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet"
	href="scripts/magnific-popup/dist/magnific-popup.css">
<link rel="stylesheet" href="scripts/sweetalert/dist/sweetalert.css">
<!-- Custom style -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/skins/all.css">
<link rel="stylesheet" href="css/demo.css">
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
<!-- custom scss -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="css/index.css">
<title>FOMA Main</title>
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

	<!-- Banner Section Start Here -->
	<section class="banner">

		<div class="banner-area">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-12">
						<div class="banner-content">

							<form action="/foma_maven2/SelectfdCon" method="post">
								<div class="codexcoder-selectoption">
									<select name="selectcode">
										<option value="none">음식 검색</option>
										<!-- <option value="lowsalt">저염식 검색</option>
										<option value="lowcal">저칼로리 음식 검색</option>
										<option value="locarhifat">저탄고지 음식 검색</option>
										<option value="locarhifat">저당식 음식 검색</option> -->
										<option value="hbp">고혈압 검색 </option>
										<option value="diabe" >당뇨 검색</option>
										<option value="hyperlip">고지혈증 검색</option>
										<option value="obesity">비만 검색</option>
										<option value="myoinfar">심근경색 검색</option>
									</select>
								</div>
								<input type="text" name="fd_name"
									placeholder="Enter your food name">
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
								for (FMember f : selectFMember) {
							%>
							<%-- <a href = "shop-single.jsp"> <%=	f.getFd_name()%></a>
								 --%>
							<form class="reselt" action="/foma_maven2/SelectfdCon" method="post">
								<%
								String str = f.getFd_name();
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
							검색 결과가 출력됩니다
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="food-category padding-tb"
		style="background-image: url(assets/css/bg-image/category-bg.jpg); background-size: cover;">
		<div class="container">
			<div class="food-box">
				<div class="section-header">
					<h3>🍏카테고리별 식단</h3>
					<h6>먹고싶은 음식 종류를 클릭해주세요</h6>
					

					<!--음식 카테고리 종류 : 곡류 및 서류
과자류
구이류
국 및 탕류
기타
김치류
면 및 만두류
밥류
볶음류
빵류
생채및 무침류
숙채류
아이스크림류
음료 및 차류
장아찌 및 절임류
전.적 및 부침류
젓갈류
조림류
죽 및 스프류
찌개 및 전골류
찜류
튀김류
            -->
				</div>
				<div class="section-wrapper">
					<div class="food-slider">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="food-item">
									<!--검색어에 카테고리 분만 아니라 음식이름도 임시로 적어주어야 한다. 쿼리스트링으로 카테고리값 넘기기  -->
									<div class="food-thumb"
										onclick="location.href='/foma_maven2/SelectfdCon?selectcode=cate&fd_category_big_name=밥류&fd_name=temp' ">
										<img src="assets/images/food/01.png" alt="food">
									</div>
									<div class="food-content">
										<a href="#">밥류</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven2/SelectfdCon?selectcode=cate&fd_category_big_name=찌개류&fd_name=temp' ">
										<img src="assets/images/food/02.png" alt="food">
									</div>
									<div class="food-content">
										<a href="#">찌개류</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven2/SelectfdCon?selectcode=cate&fd_category_big_name=면류&fd_name=temp' ">
										<img src="assets/images/food/03.png" alt="food">
									</div>
									<div class="food-content">
										<a href="#">면류</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb">
										<a href="#"><img src="assets/images/food/04.png" alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">반찬</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb">
										<a href="#"><img src="assets/images/food/05.png" alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">디저트</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb">
										<a href="#"><img src="assets/images/food/06.png" alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">샐러드</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb">
										<a href="#"><img src="assets/images/food/07.png" alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">구이</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb">
										<a href="#"><img src="assets/images/food/08.png" alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">찜류</a>
									</div>
								</div>
							</div>
<!-- 							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb">
										<a href="#"><img src="assets/images/food/09.png" alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">튀김류</a>
									</div>
								</div>
							</div> -->
						</div>
					</div>
					<div class="food-slider-next">
						<i class="icofont-double-left"></i>
					</div>
					<div class="food-slider-prev">
						<i class="icofont-double-right"></i>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Banner Section Ending Here -->

	<div class="container">
		<h2 class="text-center">나 게시글임 ㅇㅇ</h2>

		<div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-md-2">
						<img src="https://image.ibb.co/jw55Ex/def_face.jpg"
							class="img img-rounded img-fluid" />
						<p class="text-secondary text-center">몇분전에 올라옴</p>
					</div>
					<div class="col-md-10">
						<p>
							<a class="float-left"
								href="https://maniruzzaman-akash.blogspot.com/p/contact.html"><strong>오늘
									화요일임</strong></a> <span class="float-right"><i
								class="text-warning fa fa-star"></i></span> <span class="float-right"><i
								class="text-warning fa fa-star"></i></span> <span class="float-right"><i
								class="text-warning fa fa-star"></i></span> <span class="float-right"><i
								class="text-warning fa fa-star"></i></span>

						</p>
						<div class="clearfix"></div>
						<p>내일 수요일임 ㅇㄴ</p>
						<p>
							<a class="float-right btn btn-outline-primary ml-2"> <i
								class="fa fa-reply"></i> Reply
							</a> <a class="float-right btn text-white btn-danger"> <i
								class="fa fa-heart"></i> Like
							</a>
						</p>
					</div>
				</div>
				<div class="card card-inner">
					<div class="card-body">
						<div class="row">
							<div class="col-md-2">
								<img src="https://image.ibb.co/jw55Ex/def_face.jpg"
									class="img img-rounded img-fluid" />
								<p class="text-secondary text-center">15 Minutes Ago</p>
							</div>
							<div class="col-md-10">
								<p>
									<a
										href="https://maniruzzaman-akash.blogspot.com/p/contact.html"><strong>Maniruzzaman
											Akash</strong></a>
								</p>
								<p>Lorem Ipsum is simply dummy text of the pr make but also
									the leap into electronic typesetting, remaining essentially
									unchanged. It was popularised in the 1960s with the release of
									Letraset sheets containing Lorem Ipsum passages, and more
									recently with desktop publishing software like Aldus PageMaker
									including versions of Lorem Ipsum.</p>
								<p>
									<a class="float-right btn btn-outline-primary ml-2"> <i
										class="fa fa-reply"></i> Reply
									</a> <a class="float-right btn text-white btn-danger"> <i
										class="fa fa-heart"></i> Like
									</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



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


	<!-- Food Catagory Section Start here -->
	<!-- Food Services Section Start here -->
	<!-- Food Services Section Ending here -->
	<!-- Popular Food Section Start Here -->
	<!-- Popular Food Section Ending Here -->
	<!-- Food Apps Section Start here -->
	<!-- Food Apps Section Ending here -->
	<!-- Popular Food Section Style 2 Start Here -->
	<!-- Popular Food Section Style 2 Ending Here -->
	<!-- top Restaurants section start here -->
	<!-- top Restaurants section ending here -->
	<!-- Contact From Section Start Here -->
	<!-- Contact From Section Ending Here -->
	<!-- Popular Home Chef Section Start Here -->
	<!-- Popular Home Chef Section Ending Here -->
	<!-- Testimonial Section Start Here -->
	<!-- Testimonial Section Ending Here -->
	<!-- Blog Section Start here -->
	<!-- Blog Section Ending here -->
	<!-- Footer Section Start Here -->
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
	<script src="js/jquery.js"></script>
	<script src="js/jquery.migrate.js"></script>
	<script src="scripts/bootstrap/bootstrap.min.js"></script>
	<script>
		var $target_end = $(".best-of-the-week");
	</script>
	<script src="scripts/jquery-number/jquery.number.min.js"></script>
	<script src="scripts/owlcarousel/dist/owl.carousel.min.js"></script>
	<script src="scripts/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
	<script src="scripts/easescroll/jquery.easeScroll.js"></script>
	<script src="scripts/sweetalert/dist/sweetalert.min.js"></script>
	<script src="scripts/toast/jquery.toast.min.js"></script>
	<script src="js/demo.js"></script>
	<script src="js/e-magz.js"></script>
</body>

</html>