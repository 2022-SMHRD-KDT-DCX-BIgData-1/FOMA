<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>			
<%@page import="com.saeyan.dto.BoardVO"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/shopping.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<%  List<BoardVO> bd = (List<BoardVO>)session.getAttribute("selectOneBoardByNum");%>

	<div align="center">
		<h1>비밀번호 확인</h1>
		<form action="BoardServlet" name="frm" method="get">
			<input type="hidden" name="command" value="board_check_pass">
			<input type="hidden" name="num" value="<%=bd.get(0).getNum()%>">
			<table style="width: 80%">
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pass" size="20"></td>
				</tr>
			</table>
			<br> <input type="submit" value=" 확 인 "
				onclick="return passCheck()"> <br>
			<br>
		</form>
	</div>
</body>
</html>