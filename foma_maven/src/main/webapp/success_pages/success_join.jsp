<%@ page import="com.foma_java_mvc_folder.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Forty by HTML5 UP</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>

<style>
</style>

<body style="text-align: center;">

	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Menu -->
		<font size="8">회원가입성공</font> <br>
		다시 로그인 해 주세요<br>
		
		<br>
		<%
		Member vo = (Member) request.getAttribute("joinInfo");
		%>
		<table>
			<tr>
				<td>현재 접속자 아이디 : </td>
				<td><%= vo.getUsername()%></td>
			</tr>
		</table>
		<a href="./main.jsp"><input type="button" value="메인페이지로"></a>
	</div>
	
</body>
</html>

