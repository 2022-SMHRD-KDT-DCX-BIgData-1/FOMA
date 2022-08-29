<%@page import="com.foma_java_mvc_folder.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 / 회원가입 폼 템플릿</title>
<link rel="stylesheet" href="style.css">

</head>
<body>
	<!--로그인 했을시 멤버를 가져오기위해 멤버 선언  -->
	
<%
	Member loginMembr = (Member) session.getAttribute("loginMember");
	%>

	<!-- Banner -->
	<section id="banner" class="major">
		<div class="inner">
			<header class="major">
				<%-- 	----el식 사용 하지 않은 소스------
			<%
				//만약에 로그인 정보가 있다면 (세션에 로그인 정보가 있다면
						//로그인 정보에서 이메일만 꺼내서 h1 태그 사이에 출력
						if(loginMembr!=null){					
						%>
						<h1> <%= 	loginMembr.getEmail()		%></h1><%				
						}else{
							%>
							<h1>로그인 한 세션아이디를 출력해주세요</h1>
					<%
						}				
				%> --%>
				<!-- 로그인 후 로그인 한 사용자의 세션아이디로 바꾸시오.ex)smart님 환영합니다 -->
			</header>
		</div>
	</section>
	<div class="wrap">
		<div class="form-wrap">
			<!-- c:chooose-when : 조건이 true 인 경우 조건부 태그 -->
			<!-- 로그인시 로그아웃 회원탈퇴 수정 버튼 추가,  -->
			<c:choose>
				<c:when test="${empty loginMember}">
				</c:when>
				<c:otherwise>
				<!--접속한 사람 이름 출력  -->
					<h1 style="text-align:center; color: #eb5b37 "> ${loginMember.username }</h1>
					<!--정보수정, 로그아웃, 탈퇴 버튼  -->
					<button type="button" style="background-color: #dd716d"	class="togglebtn" onclick="location.href='LogoutCon'">로그아웃</button>
					
					<button type="button" style="background-color: #de3d35"class="togglebtn" onclick="location.href='update_member.jsp'">정보수정</button>
					
					<button type="button" style="background-color: #f6a212"class="togglebtn" onclick="location.href='delete_member.jsp'">회원탈퇴</button>

<br>
<br>
      <button type="button" style="background-color:#DF7401;  position:relative; left:130px; height: 40px; width: 100px; "  onclick="location.href='template/test1_foodblog/index.jsp'"> FOMA 시작!</button>


				</c:otherwise>
			</c:choose>
<%
if(loginMembr==null){//만약 로그인해서 로그인멤버가 있을경우 기본 로그인창은 사라지도록 

%>

				<div class="social-icons">
					<img src="img/fb.png" alt="facebook"> <img src="img/tw.png"alt="twitter"> <img src="img/gl.png" alt="google">
				</div>
			<div class="button-wrap">
				<div id="btn"></div>
				<!--로그인  -->
				
				<button type="button" class="togglebtn" onclick="login()">LOGIN</button>
				
				<button type="button" class="togglebtn" onclick="register()">REGISTER</button>

			</div>
			<!--폼태그에 정보를 담아서 logincon으로 보내기  -->
			<form id="login" action="LoginCon" class="input-group" method="post">
				<input type="text" maxlength="10" name="username"class="input-field" placeholder="이름을 입력하세요" required> 
					
					<input type="password" maxlength="10" name="userpw" class="input-field"
					placeholder="패스워드를 입력하세요" required> 
					
					<label><input type="checkbox"class="checkbox">Remember Password</label>
					
				<button class="submit">Login</button>

			</form>


			<!--회원가입  아이디 비번은 최대 10글자 , 이메일 30글자, 모든 입력은 반드시 입력해야 되도록-->
			<form id="register" action="JoinCon" class="input-group"method="post">
				
				<input type="text" maxlength="10" name="username"class="input-field" placeholder="아이디를 입력하세요" required> 
					
					<input type="password" maxlength="10" name="userpw" class="input-field"	placeholder="패스워드를 입력하세요" required> 
					
					<input type="email"	maxlength="30" name="useremail" class="input-field"	placeholder="이메일을 입력하세요" required>
				<!-- 숫자만 입력되게, 나이 제한 200  키 300 몸무게 500-->
				<input type="number" name="userage" class="input-field" max="200"placeholder="나이를 입력하세요" required> <input type="number"
					name="userheight" class="input-field" max="300"	placeholder="키(신장)을 입력하세요" required> 
					
					<input type="number"
					name="userweight" class="input-field" max="500"	placeholder="몸무게를 입력하세요" required> <label> 
					
					<input	type="checkbox" name="userdiabetes" class="checkbox">당뇨병</label> 
				
				<label> <input type="checkbox" name="userhbp" class="checkbox">고혈압</label>

				<button class="submit">REGISTER</button>
			</form>

		</div>
	</div>


<%} %>
	<script>
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");
		var xx = document.getElementById("deleteid");

		function login() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0";
		}

		function register() {
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "110px";
		}

		function deleteid() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0";
		}
	</script>
</body>
</html>