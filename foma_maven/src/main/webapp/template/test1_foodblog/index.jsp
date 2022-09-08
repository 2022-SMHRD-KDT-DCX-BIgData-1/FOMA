<%@page import="java.util.List"%>
<%@page import="com.foma_java_mvc_folder.domain.FMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
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
  <title>FOMA</title>
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
  </div><!-- preloader -->
  <!-- Mobile Menu Start Here -->
  <div class="mobile-menu">
    <nav class="mobile-header d-xl-none">
      <div class="header-logo"><a href="index.html" class="logo"><img src="assets/images/logo/01.png" alt="logo"></a>
      </div>
      <div class="header-bar"><span></span><span></span><span></span></div>
    </nav>
    <nav class="menu">
      <div class="mobile-menu-area d-xl-none">
        <div class="mobile-menu-area-inner scrollbar">
          <div class="mobile-search"><input type="text" placeholder="Search Here........."><button type="submit"><i
                class="icofont-search-2"></i></button></div>
          <ul>
            <li><a class="active" href="#0">Home</a>
              <ul>
                <li><a class="active" href="index.html">Home Page One</a></li>
                <li><a href="index-2.html">Home Page Two</a></li>
                <li><a href="index-3.html">Home Page Three</a></li>
                <li><a href="index-4.html">Home Page Four</a></li>
              </ul>
            </li>
            <li><a href="about.html">About</a></li>
            <li><a href="#0">Pages</a>
              <ul>
                <li><a href="#0">Category</a>
                  <ul>
                    <li><a href="food-menu.html">Food Category</a></li>
                    <li><a href="menu-card.html">Category style 1</a></li>
                    <li><a href="menu-card-2.html">Category style 2</a></li>
                  </ul>
                </li>
                <li><a href="#0">Chef</a>
                  <ul>
                    <li><a href="homechef.html">Home Chef</a></li>
                    <li><a href="homechef-single.html">Home Chef Single</a></li>
                  </ul>
                </li>
                <li><a href="recepi-single.html">Single Recipe</a></li>
                <li><a href="404.html">404 Page</a></li>
                <li><a href="coming-soon.html">Coming Soon Page</a></li>
              </ul>
            </li>
            <li><a href="#0">Blog</a>
              <ul>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="blog-single.html">Blog Single</a></li>
              </ul>
            </li>
            <li><a href="#0">Shop</a>
              <ul>
                <li><a href="shop-page.html">Shop Page</a></li>
                <li><a href="shop-single.html">Shop Single style-1</a></li>
                <li><a href="shop-single-2.html">Shop Single style-2</a></li>
                <li><a href="cart-page.html">Cart Page</a></li>
              </ul>
            </li>
            <li><a href="contact-us.html">Contact</a></li>
          </ul>
          <div class="scocial-media"><a href="#" class="facebook"><i class="icofont-facebook"></i></a><a href="#"
              class="twitter"><i class="icofont-twitter"></i></a><a href="#" class="linkedin"><i
                class="icofont-linkedin"></i></a><a href="#" class="vimeo"><i class="icofont-vimeo"></i></a></div>
        </div>
      </div>
    </nav>
  </div><!-- Mobile Menu Ending Here -->
  <!-- header section start -->
  <header class="header-section d-xl-block d-none">
    <div class="container-fluid">
      <div class="header-area">
        <div class="logo"><a href="index.html"><img src="assets/images/logo/01.png" alt="logo"></a></div>
        <div class="main-menu">
          <ul>

            <li><a href="about.html">친구찾기</a></li>
            <li><a href="#0">추천식단</a>
              <ul>
                <li><a href="recepi-single.html">지병에 따른 추천</a></li>
                <li><a href="404.html">음식 분류별 추천</a></li>
              </ul>
            <li><a href="about.html">SNS</a></li>
            </li>
            <li><a href="contact-us.html">마이 페이지</a></li>
          </ul>
        </div>



      </div>
    </div>
    </div>
    </div>
    </div>
  </header><!-- header section ending -->

  <!-- Banner Section Start Here -->
  <section class="banner">

    <div class="banner-area">
      <div class="container">
        <div class="row">
          <div class="col-xl-8 col-12">
            <div class="banner-content">

              <form action="/">
                <div class="codexcoder-selectoption"><select name="text">
                    <option value="1">음식 검색</option>
                    <option value="3">저염식 검색</option>
                    <option value="4">저칼로리 음식 검색</option>
                    <option value="5">저당 음식 검색 </option>
                  </select></div><input type="text" name="type" placeholder="Search"><button type="submit"><i
                    class="icofont-search-2"></i></button>
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- Banner Section Ending Here -->















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
  
  <script src="js/e-magz.js"></script>
</body>

</html>