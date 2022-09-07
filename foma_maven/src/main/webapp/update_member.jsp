<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="style.css">		
	</head>
	<body style="text-align: center;">

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h5>회원정보수정</h5></li>
							<!--변경할 회원정보를 담아서 updatecon으로 보내기  -->
								<form action="UpdateCon" method ="post">
								<li>접속한 아이디 : ${loginMember.username}</li>
						
					<li>이메일<input type="email"	maxlength="30" name="useremail" class="input-field" value ="${loginMember.useremail }"	placeholder="이메일을 입력하세요" required></li>
				<!-- 숫자만 입력되게, 나이 제한 200  키 300 몸무게 500-->
				<li>나이<input type="number" name="userage" class="input-field" max="200"value ="${loginMember.userage }"	placeholder="나이를 입력하세요" required> </li>
				<li>키<input type="number"name="userheight" class="input-field" max="300" value ="${loginMember.userheight }"	placeholder="키(신장)을 입력하세요" required> </li>
				<li>몸무게<input type="number"name="userweight" class="input-field" max="500" value ="${loginMember.userweight }"	placeholder="몸무게를 입력하세요" required> <label> </li>
					<li>당뇨병에 해당하면 체크하세요<input	type="checkbox" name="userdiabetes" class="checkbox">  현재 당뇨병 상태 : ${loginMember.userdiabetes }</label></li> 
				<li>고혈합에 해당하면 체크하세요<label> <input type="checkbox" name="userhbp" class="checkbox">  현재 고혈합 상태 : ${loginMember.userhbp }</label></li>

				<button class="submit">변경</button>
								</form>
						</ul>
					</nav>			
			</div>

	</body>
</html>

