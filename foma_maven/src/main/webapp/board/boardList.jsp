<%@page import="com.foma_java_mvc_folder.domain.Member"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.saeyan.dto.BoardVO"%>

<%@page import="com.foma_java_mvc_folder.*"%>
<%@page import="BoardListServlet.Myutil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FOMA 게시판</title>
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
<link rel="stylesheet" href="../assets/css/animate.css">
<!-- bootstarp css -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<!-- icofont -->
<link rel="stylesheet" href="../assets/css/icofont.min.css">
<!-- lightcase css -->
<link rel="stylesheet" href="../assets/css/lightcase.css">
<!-- swiper css -->
<link rel="stylesheet" href="../assets/css/swiper.min.css">
<!-- custom scss -->
<link rel="stylesheet"
	href="template/test1_foodblog/assets/css/style.css">
<link rel="stylesheet"
	href="template/test1_foodblog/assets/css/style2.css">
<link rel="stylesheet" href="template/test1_foodblog/css/LikeFind.css">
<link rel="shortcut icon"
	href="template/test1_foodblog/assets/images/favicon.png"
	type="image/png">
</head>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<link rel="stylesheet" type="text/css" href="css/pagekim.css">
<style type="text/css">
</style>
</head>
<body>

	<%
	List<BoardVO> bd = (List<BoardVO>) session.getAttribute("boardList");
	Member member = (Member) session.getAttribute("loginMember");
	/* List<imageVO> imgvo = (List<imageVO>)session.getAttribute("selectimage"); */
	%>
	<header class="header-section d-xl-block d-none">
	<div class="container-fluid">
		<div class="header-area">
			<div class="logo">
				<a href="template/test1_foodblog/index.jsp"><img
					src="template/test1_foodblog/assets/images/logo/01.png" alt="logo"></a>
			</div>
			<div class="main-menu">
				<ul>
					<li><a href="template/test1_foodblog/FindFriends.jsp">친구찾기</a></li>

					<li><a href="">추천식단</a>
						<ul>
							<li><a href="template/test1_foodblog/recommendation2.jsp">지병에
									따른 추천</a></li>
							<li><a href="template/test1_foodblog/recommendation1.jsp">음식
									분류별 추천</a></li>
						</ul></li>

					<li><a href="template/test1_foodblog/SNS.jsp">SNS</a>
						<ul>
							<li><a href="board_index.jsp">게시판</a></li>
						</ul></li>

					<li><a href="template/test1_foodblog/mypage.jsp">마이페이지</a>
						<ul>
							<li><a href="#">접속한 아이디 : <%=member.getUsername() %></a></li>
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


	<!--페이징 테스트  -->

	<%
	request.setCharacterEncoding("utf-8");

	// 파라미터로 넘어온 페이지 번호(JSP에서 page는 예약어로 변수명으로 사용 불가)
	String pageNum = request.getParameter("page");
	int current_page = 1;
	if (pageNum != null) {
		current_page = Integer.parseInt(pageNum);
	}

	Myutil util = new Myutil();

	int dataCount = bd.size();
	int rows = 10;
	int total_page = util.pageCount(rows, dataCount);
	if (current_page > total_page) {
		current_page = total_page;
	}

	String listUrl = "BoardServlet?command=board_list";
	String paging = util.paging(current_page, total_page, listUrl);

	int pgstart = (current_page * 10) - 10;
	int pgend = 10;

	int endindex = bd.size() % 10;

	if (bd.size() > 10) {//목록이 10개 이상

		if (bd.size() - (current_page * 10) > 0) {//남아있는 목록이 10개 이상일경우
			pgend = (current_page * 10);
		} else {
			pgend = (current_page * 10) - 10 + endindex;
		}

	} else {
		pgend = bd.size();
	}
	%>

	<!--페이징 테스트  -->
	<div id="wrap" align="center">
		<div class="title">
			<h1>게시글 리스트</h1>
		</div>
	</div>
	<table class="list">
		<tr>
			<td colspan="5" style="border: white;">
				<%
				if (member != null) {
				%> 접속한 아이디 ; <%=member.getUsername()%>
			</td colspan="5" style="border: white;">
			<td colspan="5" style="border: white;"><button type="button"
					onclick="location.href='board/boardWrite.jsp'">게시글 등록</button></td>
			<%
			} else {
			%>
			로그인 해야 글쓰기가 가능합니다
			</a>
			</td>
			<%
			}
			%>
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
		if (bd != null) {
			for (int i = pgstart; i < pgend; i++) {
		%>
		<div class="postPage">
			<div class="post">
				<div class="idPic">
					<span>USER : <%=bd.get(i).getName()%>
					</span>
				</div>
				<%-- <div class="options">
					<ul class="images">
						<%if(!imgvo.isEmpty()) {%>			
		<img src = "fomaimages/<%=imgvo.get(0).getFileName()%>">	
		<!--  
			<img src = "<%=imgvo.get(0).getUploadFilePath()%>\<%=imgvo.get(0).getFileName()%>">	
			-->
		<%} %>
					</ul>
				</div> --%>
				<div class="caption">
					<span><a
						href="BoardServlet?command=board_view&num=<%=bd.get(i).getNum()%>">
							<%=bd.get(i).getTitle()%>
					</a></span> <br>
				</div>
				<div class="comment">
					<div class="commentList">
						<ul>
							조회수 :
							<%=bd.get(i).getReadcount()%>
							좋아요 :
							<%=bd.get(i).getGood()%>
						</ul>
						<ul>
							작성시간 :<%=bd.get(i).getWritedate()%>>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<tr class="record">
			<td><%=bd.get(i).getNum()%></td>
			<td><a
				href="BoardServlet?command=board_view&num=<%=bd.get(i).getNum()%>">
					<%=bd.get(i).getTitle()%>
			</a></td>
			<td><%=bd.get(i).getName()%></td>
			<td><%=bd.get(i).getWritedate()%>></td>
			<td><%=bd.get(i).getReadcount()%></td>
			<td><%=bd.get(i).getGood()%></td>
		</tr>
		<!-- <img src="fomaimages/google5.jpg"> -->
		<%
		}
		%>
		<%
		}
		%>

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
		<div style="padding-top: 20px;">
			<%=paging%>
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