<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

		<link rel="stylesheet" href="style.css">		

</head>
<body>


<form action="../../DeleteCon" method ="post">
								<h1>접속한 아이디 : ${loginMember.username}</h1>
								<br>
								<br>
								
								<h2>아이디를 서버에서 삭제 하시겟습니까? 삭제하려면 패스워드를 입력하세요<input type="password" name="userpw" class="input-field" required></h2>
								<input type="submit"></button>
					



</body>
</html>