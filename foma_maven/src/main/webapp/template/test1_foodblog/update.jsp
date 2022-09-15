
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge"><!-- favicon -->
        <meta name="description" content="Magz is a HTML5 & CSS3 magazine template is based on Bootstrap 3.">
        <meta name="author" content="Kodinger">
        <meta name="keyword" content="magz, html5, css3, template, magazine template">
        <!-- Shareable -->
        <meta property="og:title" content="HTML5 & CSS3 magazine template is based on Bootstrap 3" />
        <meta property="og:type" content="article" />
        <meta property="og:url" content="http://github.com/nauvalazhar/Magz" />
        <meta property="og:image" content="https://raw.githubusercontent.com/nauvalazhar/Magz/master/images/preview.png" />
        <title>FOMA 회원정보수정</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="scripts/bootstrap/bootstrap.min.css">
        <!-- IonIcons -->
        <link rel="stylesheet" href="scripts/ionicons/css/ionicons.min.css">
        <!-- Toast -->
        <link rel="stylesheet" href="scripts/toast/jquery.toast.min.css">
        <!-- OwlCarousel -->
        <link rel="stylesheet" href="scripts/owlcarousel/dist/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="scripts/owlcarousel/dist/assets/owl.theme.default.min.css">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="scripts/magnific-popup/dist/magnific-popup.css">
        <link rel="stylesheet" href="scripts/sweetalert/dist/sweetalert.css">
        <!-- Custom style -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/skins/all.css">
        <link rel="stylesheet" href="css/demo.css">
        <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png"><!-- animate scss -->
        <link rel="stylesheet" href="assets/css/animate.css"><!-- bootstarp css -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css"><!-- icofont -->
        <link rel="stylesheet" href="assets/css/icofont.min.css"><!-- lightcase css -->
        <link rel="stylesheet" href="assets/css/lightcase.css"><!-- swiper css -->
        <link rel="stylesheet" href="assets/css/swiper.min.css"><!-- custom scss -->
        <link rel="stylesheet" href="assets/css/style.css">
        <title>마이 페이지</title>
    </head>


<body>
    <div class="preloader">
        <div class="load loade">
            <hr />
            <hr />
            <hr />
            <hr />
        </div>
    </div>

    <header class="header-section d-xl-block d-none">
        <div class="container-fluid">
            <div class="header-area">
                <div class="logo"><a href="index.jsp"><img src="assets/images/logo/01.png" alt="logo"></a></div>
                <div class="main-menu">
                    <ul>
                        <li><a href="#">친구찾기</a></li>
                        <li><a href="#">추천식단</a>
                            <ul>
                                <li><a href="#">지병에 따른 추천</a></li>
                                <li><a href="#">음식 분류별 추천</a></li>
                            </ul>
                        <li><a href="#">SNS</a></li>
                        </li>
                        <li><a href="mypage.jsp">마이 페이지</a></li>
                    </ul>
                </div>
            </div>
        </div>
        </div>
        </div>
        </div>
    </header>
    <div class="main-panel" style="margin: 20px;">
        <div class="container">


            <div class="row">
                <div class="col-md-4 grid-margin stretch-card">
                    <div class="card">
                        <div class="profile-card">

                            <div class="profile-header">

                                <div class="cover-image">
                                    <img src="https://dimg.donga.com/ugc/CDB/SHINDONGA/Article/61/d7/de/7c/61d7de7c1e57d2738276.jpg"
                                        class="img img-fluid">
                                </div>
                                <div class="user-image">
                                    <img src="assets/images/logo/01.png" class="img">
                                </div>
                            </div>

                            <div class="profile-content">
                                <div class="profile-name">아이디 : ${loginMember.username}</div>
                                <ul class="profile-info-list">
                                    <a href="mypage.jsp" class="profile-info-list-item"><i class="mdi mdi-eye"></i>돌아가기</a>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

	<div class="col-md-8 grid-margin stretch-card" id="wrapper">
                        <!-- Menu -->
                        <nav class="card" id="Update">
                            <ul class="actions vertical card-body">
                                <li>
                                    <h5>회원정보수정</h5>
                                </li>
                                <hr>
                                <!--변경할 회원정보를 담아서 updatecon으로 보내기  -->
                                <form action="../../UpdateCon" method="post">

                                    <table style="border: none;">
                                        <tr>
                                            <!-- 첫번째 줄 시작 -->
                                            <td style="width: 150px; height: 50px; text-align: center;">접속한 아이디</td>
                                            <td>${loginMember.username}</td>
                                        </tr><!-- 첫번째 줄 끝 -->
                                        <tr>
                                            <!-- 첫번째 줄 시작 -->
                                            <td style="width: 150px; height: 50px; text-align: center;">이메일</td>
                                            <td><input type="email" maxlength="30" name="useremail" class="input-field"
                                                    value="${loginMember.useremail }" placeholder="이메일을 입력하세요" required>
                                            </td>
                                        </tr><!-- 첫번째 줄 끝 -->
                                        <tr>
                                            <!-- 두번째 줄 시작 -->
                                            <td style="width: 150px; height: 50px; text-align: center;">나이</td>
                                            <td><input type="number" name="userage" class="input-field" max="200"
                                                    value="${loginMember.userage }" placeholder="나이를 입력하세요" required>
                                            </td>
                                        </tr><!-- 두번째 줄 끝 -->
                                        <td style="width: 150px; height: 50px; text-align: center;">키</td>
                                        <td><input type="number" name="userheight" class="input-field" max="300"
                                                value="${loginMember.userheight }" placeholder="키(신장)을 입력하세요" required>
                                        </td>
                                        </tr><!-- 3 줄 끝 -->
                                        <td style="width: 150px; height: 50px; text-align: center;">몸무게</td>
                                        <td><input type="number" name="userweight" class="input-field" max="500"
                                                value="${loginMember.userweight }" placeholder="몸무게를 입력하세요" required>
                                        </td>
                                        </tr><!-- 4 줄 끝 -->
                                    </table>
                                    <!-- 체크박스 -->
	  <div class="form-check">
 
        <label class="form-check-label" for="flexCheckDefault">
        현재 고혈합 상태 : ${loginMember.userhbp} <input type="checkbox" name="userhbp">
        </label>
        <label class="form-check-label" for="flexCheckDefault">
        현재 당뇨병 상태 : ${loginMember.userdiabetes} <input type="checkbox" name="userhbp">
        </label>
        <label class="form-check-label" for="flexCheckDefault">
        현재 고지혈증 상태 : 정상<input type="checkbox" name="">
        </label>
        <label class="form-check-label" for="flexCheckDefault">
        현재 비만 상태 : 정상<input type="checkbox" name="">
        </label>

      </div>
      <div class="form-check">
 
        <label class="form-check-label" for="flexCheckDefault">
        현재 동맥경화 상태 : ${loginMember.userhbp} <input type="checkbox" name="userhbp">
        </label>
        <label class="form-check-label" for="flexCheckDefault">
        현재 심장병 상태 : ${loginMember.userdiabetes} <input type="checkbox" name="userhbp">
        </label>
        <label class="form-check-label" for="flexCheckDefault">
        현재 뇌졸중 상태 : 정상<input type="checkbox" name="">
        </label>
        <label class="form-check-label" for="flexCheckDefault">
        현재 만성폐질환 상태 : 정상<input type="checkbox" name="">
        </label>

      </div>
      <div class="form-check">
 
        <label class="form-check-label" for="flexCheckDefault">
        현재 간질환 상태 : ${loginMember.userhbp} <input type="checkbox" name="userhbp">
        </label>
        <label class="form-check-label" for="flexCheckDefault">
        현재 골다공증 상태 : ${loginMember.userdiabetes} <input type="checkbox" name="userhbp">
        </label>
        <label class="form-check-label" for="flexCheckDefault">
        현재 류마티스성 관절염(성인병) 상태 : 정상<input type="checkbox" name="">
        </label>
       

      </div>
								      
								   
								       
     
                                    <button class="submit"
                                        style="background-color: #F1F2F3; border: none; padding: 15px; width: 100px;">변경</button>
                                </form>
                                <hr>
                            </ul>
                        </nav>
                    </div>

 
				
					
			


                <!-- scrollToTop start here --><a href="#" class="scrollToTop"><i class="icofont-swoosh-up"></i></a>
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
                <script>var $target_end = $(".best-of-the-week");</script>
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