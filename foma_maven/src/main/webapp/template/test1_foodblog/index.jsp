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
    <meta http-equiv="X-UA-Compatible" content="ie=edge"><!-- favicon -->
    <meta name="description" content="Magz is a HTML5 & CSS3 magazine template is based on Bootstrap 3.">
           <meta name="author" content="Kodinger">
           <meta name="keyword" content="magz, html5, css3, template, magazine template">
           <!-- Shareable -->
           <meta property="og:title" content="HTML5 & CSS3 magazine template is based on Bootstrap 3" />
           <meta property="og:type" content="article" />
           <meta property="og:url" content="http://github.com/nauvalazhar/Magz" />
           <meta property="og:image" content="https://raw.githubusercontent.com/nauvalazhar/Magz/master/images/preview.png" />
           <title>Magz &mdash; Responsive HTML5 &amp; CSS3 Magazine Template</title>
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
    <title>Mezban - Food & Resturent HTML Template</title>
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
                  </select></div><input type="text" name="type" placeholder="Search"><button
                  type="submit"><i class="icofont-search-2"></i></button>
              </form>
            
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- Banner Section Ending Here -->

  












  
  <!-- Food Catagory Section Start here -->
  <section class="food-category padding-tb"
    style="background-image: url(assets/css/bg-image/category-bg.jpg); background-size: cover;">
    <div class="container">
      <div class="food-box">
        <div class="section-header">
          <h3>Browse Food Category</h3>
          <p>Completely network impactful users whereas next-generation applications engage out thinking via tactical
            action.</p>
        </div>
        <div class="section-wrapper">
          <div class="food-slider">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="food-item">
                  <div class="food-thumb"><a href="#"><img src="assets/images/food/01.png" alt="food"></a></div>
                  <div class="food-content"><a href="#">Breakfast</a></div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="food-item">
                  <div class="food-thumb"><a href="#"><img src="assets/images/food/02.png" alt="food"></a></div>
                  <div class="food-content"><a href="#">Lunch</a></div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="food-item">
                  <div class="food-thumb"><a href="#"><img src="assets/images/food/03.png" alt="food"></a></div>
                  <div class="food-content"><a href="#">Dinner</a></div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="food-item">
                  <div class="food-thumb"><a href="#"><img src="assets/images/food/04.png" alt="food"></a></div>
                  <div class="food-content"><a href="#">Drink</a></div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="food-item">
                  <div class="food-thumb"><a href="#"><img src="assets/images/food/05.png" alt="food"></a></div>
                  <div class="food-content"><a href="#">Juice</a></div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="food-item">
                  <div class="food-thumb"><a href="#"><img src="assets/images/food/06.png" alt="food"></a></div>
                  <div class="food-content"><a href="#">Coffee</a></div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="food-item">
                  <div class="food-thumb"><a href="#"><img src="assets/images/food/07.png" alt="food"></a></div>
                  <div class="food-content"><a href="#">Tea</a></div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="food-item">
                  <div class="food-thumb"><a href="#"><img src="assets/images/food/08.png" alt="food"></a></div>
                  <div class="food-content"><a href="#">Beef Roast</a></div>
                </div>
              </div>
            </div>
          </div>
          <div class="food-slider-next"><i class="icofont-double-left"></i></div>
          <div class="food-slider-prev"><i class="icofont-double-right"></i></div>
        </div>
      </div>
    </div>
  </section><!-- Food Catagory Section Ending here -->
  <!-- Food Services Section Start here -->
  <section class="food-services padding-tb">
    <div class="container">
      <div class="section-header">
        <h3>How it Works</h3>
        <p>Completely network impactful users whereas next-generation applications engage out thinking via tactical
          action.</p>
      </div>
      <div class="section-wrapper">
        <div class="service-item">
          <div class="service-inner">
            <div class="service-thumb"><img src="assets/images/service/01.jpg" alt="food-service"><span>01 step</span>
            </div>
            <div class="service-content">
              <h6><a href="#">Choose Your Favorite</a></h6>
            </div>
          </div>
        </div>
        <div class="service-item">
          <div class="service-inner">
            <div class="service-thumb"><img src="assets/images/service/02.jpg" alt="food-service"><span>02 step</span>
            </div>
            <div class="service-content">
              <h6><a href="#">We Deliver Your Meals</a></h6>
            </div>
          </div>
        </div>
        <div class="service-item">
          <div class="service-inner">
            <div class="service-thumb"><img src="assets/images/service/03.jpg" alt="food-service"><span>03 step</span>
            </div>
            <div class="service-content">
              <h6><a href="#">Cash on Delivery</a></h6>
            </div>
          </div>
        </div>
        <div class="service-item">
          <div class="service-inner">
            <div class="service-thumb"><img src="assets/images/service/04.jpg" alt="food-service"><span>04 step</span>
            </div>
            <div class="service-content">
              <h6><a href="#">Eat And Enjoy</a></h6>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- Food Services Section Ending here -->
  <!-- Popular Food Section Start Here -->
  <section class="popular-foods padding-tb" style="background-color: #fafeff;">
    <div class="container">
      <div class="section-header">
        <h3>Most Popular Foods</h3>
        <p>Completely network impactful users whereas next-generation applications engage out thinking via tactical
          action.</p>
      </div>
      <div class="section-wrapper">
        <div class="row">
          <div class="col-xl-4 col-md-6 col-12">
            <div class="p-food-item">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food/01.jpg" alt="p-food"><span>$20 -
                    $30</span></div>
                <div class="p-food-content">
                  <div class="p-food-author"><a href="#"><img src="assets/images/chef/author/01.jpg"
                        alt="food-author"></a></div>
                  <h6><a href="#">Dragon Express</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 col-12">
            <div class="p-food-item">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food/02.jpg" alt="p-food"><span>$20 -
                    $30</span></div>
                <div class="p-food-content">
                  <div class="p-food-author"><a href="#"><img src="assets/images/chef/author/02.jpg"
                        alt="food-author"></a></div>
                  <h6><a href="#">Meat Lovers</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 col-12">
            <div class="p-food-item">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food/03.jpg" alt="p-food"><span>$20 -
                    $30</span></div>
                <div class="p-food-content">
                  <div class="p-food-author"><a href="#"><img src="assets/images/chef/author/03.jpg"
                        alt="food-author"></a></div>
                  <h6><a href="#">Subway</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 col-12">
            <div class="p-food-item">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food/04.jpg" alt="p-food"><span>$20 -
                    $30</span></div>
                <div class="p-food-content">
                  <div class="p-food-author"><a href="#"><img src="assets/images/chef/author/04.jpg"
                        alt="food-author"></a></div>
                  <h6><a href="#">Hardee’s</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 col-12">
            <div class="p-food-item">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food/05.jpg" alt="p-food"><span>$20 -
                    $30</span></div>
                <div class="p-food-content">
                  <div class="p-food-author"><a href="#"><img src="assets/images/chef/author/05.jpg"
                        alt="food-author"></a></div>
                  <h6><a href="#">Nando’s</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 col-12">
            <div class="p-food-item">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food/06.jpg" alt="p-food"><span>$20 -
                    $30</span></div>
                <div class="p-food-content">
                  <div class="p-food-author"><a href="#"><img src="assets/images/chef/author/06.jpg"
                        alt="food-author"></a></div>
                  <h6><a href="#">Pizza Hut</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- Popular Food Section Ending Here -->
  <!-- Food Apps Section Start here -->
  <section class="food-apps">
    <div class="bg-shape-style"></div>
    <div class="container">
      <div class="row align-items-center flex-row-reverse">
        <div class="col-lg-6 col-12">
          <div class="apps-content padding-tb">
            <div class="section-header">
              <h3>Mezban FoodBakery In Your Mobile! Get Our App</h3>
              <p>Now you can make food happen pretty much wherever you are thanks to the free easy-to-use Food Delivery
                & Takeout App.</p>
              <div class="food-btn-group"><a href="#"><img src="assets/images/apps/icon/01.png" alt="food-apps">
                  <div class="app-download">
                    <p>Download it from</p><span>Play Store</span>
                  </div>
                </a><a href="#"><img src="assets/images/apps/icon/02.png" alt="food-apps">
                  <div class="app-download">
                    <p>Download it from</p><span>App Store</span>
                  </div>
                </a></div>
              <form>
                <div class="field-holder"><input class="field-input" type="email"
                    placeholder="Enter your area (Dhaka Bangladesh)"><button type="submit" class="field-label-btn">Send
                    Link</button></div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-12">
          <div class="apps-thumb"><img src="assets/images/apps/01.png" alt="food-apps"></div>
        </div>
      </div>
    </div>
  </section><!-- Food Apps Section Ending here -->
  <!-- Popular Food Section Style 2 Start Here -->
  <section class="popular-foods padding-tb">
    <div class="container">
      <div class="section-header">
        <h3>Popular Weekly Foods</h3>
        <p>Completely network impactful users whereas next-generation applications engage out thinking via tactical
          action.</p>
      </div>
      <div class="section-wrapper">
        <div class="row">
          <div class="col-lg-6 col-12">
            <div class="p-food-item style-2">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food/style-2/01.jpg"
                    alt="p-food"><span>$20.99</span></div>
                <div class="p-food-content">
                  <h6><a href="#">Dragon Express</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><a href="#"><img src="assets/images/chef/author/01.jpg" alt="food-author"></a></li>
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-12">
            <div class="p-food-item style-2">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food//style-2/02.jpg"
                    alt="p-food"><span>$20.99</span></div>
                <div class="p-food-content">
                  <h6><a href="#">Meat Lovers</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><a href="#"><img src="assets/images/chef/author/03.jpg" alt="food-author"></a></li>
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-12">
            <div class="p-food-item style-2">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food//style-2/03.jpg"
                    alt="p-food"><span>$20.99</span></div>
                <div class="p-food-content">
                  <h6><a href="#">Subway</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><a href="#"><img src="assets/images/chef/author/04.jpg" alt="food-author"></a></li>
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-12">
            <div class="p-food-item style-2">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food//style-2/04.jpg"
                    alt="p-food"><span>$20.99</span></div>
                <div class="p-food-content">
                  <h6><a href="#">Nando’s</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><a href="#"><img src="assets/images/chef/author/05.jpg" alt="food-author"></a></li>
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-12">
            <div class="p-food-item style-2">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food//style-2/06.jpg"
                    alt="p-food"><span>$20.99</span></div>
                <div class="p-food-content">
                  <h6><a href="#">Pizza Hut</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><a href="#"><img src="assets/images/chef/author/05.jpg" alt="food-author"></a></li>
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-12">
            <div class="p-food-item style-2">
              <div class="p-food-inner">
                <div class="p-food-thumb"><img src="assets/images/popular-food//style-2/06.jpg"
                    alt="p-food"><span>$20.99</span></div>
                <div class="p-food-content">
                  <h6><a href="#">Misimisu Chinese Food</a></h6>
                  <div class="p-food-group"><span>Type of food :</span><a href="#">Beef Roast</a><a href="#">Pizza</a><a
                      href="#">Stakes</a></div>
                  <ul class="del-time">
                    <li><a href="#"><img src="assets/images/chef/author/06.jpg" alt="food-author"></a></li>
                    <li><i class="icofont-cycling-alt"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Delivery time</span><span
                            class="tooltip-info">Your order will be delivered in 20 minutes.</span></div>
                      </div>
                    </li>
                    <li><i class="icofont-stopwatch"></i>
                      <div class="time-tooltip">
                        <div class="time-tooltip-holder"><span class="tooltip-label">Pickup time</span><span
                            class="tooltip-info">You can pickup order in 20 minutes.</span></div>
                      </div>
                    </li>
                  </ul>
                  <div class="p-food-footer">
                    <div class="left">
                      <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                          class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
                    </div>
                    <div class="right"><i class="icofont-home"></i>6th Avenue New York</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- Popular Food Section Style 2 Ending Here -->
  <!-- top Restaurants section start here -->
  <section class="restaurant-section padding-tb">
    <div class="container">
      <div class="section-header">
        <h3>Top Restaurants</h3>
        <p>Completely network impactful users whereas next-generation applications engage out thinking via tactical
          action.</p>
      </div>
      <div class="section-wrapper">
        <div class="top-restaurant">
          <div class="restaurant-item">
            <div class="restaurant-inner">
              <div class="restaurant-thumb"><a href="#"><img src="assets/images/restaurant/01.jpg" alt="restaurant"></a>
              </div>
            </div>
          </div>
          <div class="restaurant-item">
            <div class="restaurant-inner">
              <div class="restaurant-thumb"><a href="#"><img src="assets/images/restaurant/02.jpg" alt="restaurant"></a>
              </div>
            </div>
          </div>
          <div class="restaurant-item">
            <div class="restaurant-inner">
              <div class="restaurant-thumb"><a href="#"><img src="assets/images/restaurant/03.jpg" alt="restaurant"></a>
              </div>
            </div>
          </div>
          <div class="restaurant-item">
            <div class="restaurant-inner">
              <div class="restaurant-thumb"><a href="#"><img src="assets/images/restaurant/04.jpg" alt="restaurant"></a>
              </div>
            </div>
          </div>
          <div class="restaurant-item">
            <div class="restaurant-inner">
              <div class="restaurant-thumb"><a href="#"><img src="assets/images/restaurant/05.jpg" alt="restaurant"></a>
              </div>
            </div>
          </div>
          <div class="restaurant-item">
            <div class="restaurant-inner">
              <div class="restaurant-thumb"><a href="#"><img src="assets/images/restaurant/06.jpg" alt="restaurant"></a>
              </div>
            </div>
          </div>
          <div class="restaurant-item">
            <div class="restaurant-inner">
              <div class="restaurant-thumb"><a href="#"><img src="assets/images/restaurant/07.jpg" alt="restaurant"></a>
              </div>
            </div>
          </div>
          <div class="restaurant-item">
            <div class="restaurant-inner">
              <div class="restaurant-thumb"><a href="#"><img src="assets/images/restaurant/08.jpg" alt="restaurant"></a>
              </div>
            </div>
          </div>
          <div class="restaurant-item">
            <div class="restaurant-inner">
              <div class="restaurant-thumb"><a href="#"><img src="assets/images/restaurant/09.jpg" alt="restaurant"></a>
              </div>
            </div>
          </div>
          <div class="restaurant-item">
            <div class="restaurant-inner">
              <div class="restaurant-thumb"><a href="#"><img src="assets/images/restaurant/10.jpg" alt="restaurant"></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- top Restaurants section ending here -->
  <!-- Contact From Section Start Here -->
  <section class="contact-us">
    <div class="bg-shape-style"></div>
    <div class="container">
      <div class="row justify-content-center align-items-center">
        <div class="col-xl-4 col-lg-6 col-12">
          <div class="contact-from">
            <h5>Register Now</h5>
            <form action="/"><input type="text" name="name" placeholder="Full Name*"><input type="email" name="email"
                placeholder="Your Eamil*"><input type="text" name="number" placeholder="Phone Number"><input
                type="submit" value="Free Registration"></form>
          </div>
        </div>
        <div class="col-xl-5 col-lg-6 col-12">
          <div class="contact-home-chef">
            <div class="section-header">
              <h3>Become A HomeChef.</h3>
              <p>Now you can make food happen pretty much wherever you are thanks to the free easy-to-use</p>
            </div>
            <div class="section-wrapper">
              <div class="contact-count-item">
                <div class="contact-count-inner">
                  <div class="contact-count-thumb"><img src="assets/images/contac/icon/01.png" alt="food-contact"></div>
                  <div class="contact-count-content">
                    <h5><span class="counter">24896</span>+</h5>
                    <p>Food</p>
                  </div>
                </div>
              </div>
              <div class="contact-count-item">
                <div class="contact-count-inner">
                  <div class="contact-count-thumb"><img src="assets/images/contac/icon/02.png" alt="food-contact"></div>
                  <div class="contact-count-content">
                    <h5><span class="counter">2.5</span>K</h5>
                    <p>Clints</p>
                  </div>
                </div>
              </div>
              <div class="contact-count-item">
                <div class="contact-count-inner">
                  <div class="contact-count-thumb"><img src="assets/images/contac/icon/03.png" alt="food-contact"></div>
                  <div class="contact-count-content">
                    <h5><span class="counter">250</span>+</h5>
                    <p>Chef</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-12">
          <div class="contact-thumb"><img src="assets/images/contac/01.png" alt="food-contact"></div>
        </div>
      </div>
    </div>
  </section><!-- Contact From Section Ending Here -->
  <!-- Popular Home Chef Section Start Here -->
  <section class="popular-chef padding-tb" style="background-color: #fafeff;">
    <div class="container">
      <div class="section-header">
        <h3>Popular HomeChef</h3>
        <p>Completely network impactful users whereas next-generation applications engage out thinking via tactical
          action.</p>
      </div>
      <div class="section-wrapper">
        <div class="row justify-content-center">
          <div class="col-xl-4 col-md-6 col-12">
            <div class="chef-item">
              <div class="chef-inner">
                <div class="chef-thumb"><img src="assets/images/chef/01.jpg" alt="food-chef"></div>
                <div class="chef-content">
                  <div class="chef-author"><a href="#"><img src="assets/images/chef/author/07.jpg"
                        alt="chef-author"></a></div>
                  <h5><a href="#">Sanzida laila Trisha</a></h5>
                  <p>Month Top Homechef</p>
                  <div class="scocial-share"><a href="#" class="food-btn"><span><i
                          class="icofont-ui-user"></i>follow</span></a></div>
                  <div class="chef-footer">
                    <div class="chef-earn chef-con">
                      <h6>$290.00</h6><a href="#">Earned</a>
                    </div>
                    <div class="chef-menu chef-con">
                      <h6>96</h6><a href="#">Food Menu</a>
                    </div>
                    <div class="chef-recipe chef-con">
                      <h6>33</h6><a href="#">Recipe</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 col-12">
            <div class="chef-item">
              <div class="chef-inner">
                <div class="chef-thumb"><img src="assets/images/chef/02.jpg" alt="food-chef"></div>
                <div class="chef-content">
                  <div class="chef-author"><a href="#"><img src="assets/images/chef/author/08.jpg"
                        alt="chef-author"></a></div>
                  <h5><a href="#">Jinnat Raihun Sumi</a></h5>
                  <p>Month Top Homechef</p>
                  <div class="scocial-share"><a href="#" class="food-btn"><span><i
                          class="icofont-ui-user"></i>follow</span></a></div>
                  <div class="chef-footer">
                    <div class="chef-earn chef-con">
                      <h6>$290.00</h6><a href="#">Earned</a>
                    </div>
                    <div class="chef-menu chef-con">
                      <h6>96</h6><a href="#">Food Menu</a>
                    </div>
                    <div class="chef-recipe chef-con">
                      <h6>33</h6><a href="#">Recipe</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 col-12">
            <div class="chef-item">
              <div class="chef-inner">
                <div class="chef-thumb"><img src="assets/images/chef/03.jpg" alt="food-chef"></div>
                <div class="chef-content">
                  <div class="chef-author"><a href="#"><img src="assets/images/chef/author/09.jpg"
                        alt="chef-author"></a></div>
                  <h5><a href="#">Shahana Anam Khan</a></h5>
                  <p>Month Top Homechef</p>
                  <div class="scocial-share"><a href="#" class="food-btn"><span><i
                          class="icofont-ui-user"></i>follow</span></a></div>
                  <div class="chef-footer">
                    <div class="chef-earn chef-con">
                      <h6>$290.00</h6><a href="#">Earned</a>
                    </div>
                    <div class="chef-menu chef-con">
                      <h6>96</h6><a href="#">Food Menu</a>
                    </div>
                    <div class="chef-recipe chef-con">
                      <h6>33</h6><a href="#">Recipe</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- Popular Home Chef Section Ending Here -->
  <!-- Testimonial Section Start Here -->
  <section class="testimonial padding-tb"
    style="background-image: url(assets/css/bg-image/category-bg.jpg); background-size: cover;">
    <div class="container">
      <div class="section-wrapper">
        <div class="quete-thumb"><img src="assets/images/testimonial/icon/01.jpg" alt="food-quete"></div>
        <div id="demo" class="carousel slide vert">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="testi-item">
                <p>Extend Accurate Services Long Term High Impact Experiences Interactiv Streamline Team Compelingly
                  Simplify Solutions Before Technicaly Sound Leadership Skills Creative Holstic Process Improvements
                  Proactively Streamline Alternative Niche Markets Forwor Resource Conveniently cultivate pandemic
                  technology and corporate.</p>
                <h6>Somrat Islam <span>(UI Designer)</span></h6>
                <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                    class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="testi-item">
                <p>Extend Accurate Services Long Term High Impact Experiences Interactiv Streamline Team Compelingly
                  Simplify Solutions Before Technicaly Sound Leadership Skills Creative Holstic Process Improvements
                  Proactively Streamline Alternative Niche Markets Forwor Resource Conveniently cultivate pandemic
                  technology and corporate.</p>
                <h6>Somrat Islam <span>(UI Designer)</span></h6>
                <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                    class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
              </div>
            </div>
            <div class="carousel-item">
              <div class="testi-item">
                <p>Extend Accurate Services Long Term High Impact Experiences Interactiv Streamline Team Compelingly
                  Simplify Solutions Before Technicaly Sound Leadership Skills Creative Holstic Process Improvements
                  Proactively Streamline Alternative Niche Markets Forwor Resource Conveniently cultivate pandemic
                  technology and corporate.</p>
                <h6>Somrat Islam <span>(UI Designer)</span></h6>
                <div class="rating"><i class="icofont-star"></i><i class="icofont-star"></i><i
                    class="icofont-star"></i><i class="icofont-star"></i><i class="icofont-star"></i></div>
              </div>
            </div>
          </div>
          <div class="carousel-indicators">
            <div data-target="#demo" data-slide-to="0" class="item active"><img src="assets/images/testimonial/01.jpg"
                alt=""></div>
            <div data-target="#demo" data-slide-to="1" class="item"><img src="assets/images/testimonial/02.jpg" alt="">
            </div>
            <div data-target="#demo" data-slide-to="2" class="item"><img src="assets/images/testimonial/03.jpg" alt="">
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- Testimonial Section Ending Here -->
  <!-- Blog Section Start here -->
  <section class="blog-section padding-tb">
    <div class="container">
      <div class="section-header">
        <h3>Most Popular Blog</h3>
        <p>Completely network impactful users whereas next-generation applications engage out thinking via tactical
          action.</p>
      </div>
      <div class="section-wrapper">
        <div class="row">
          <div class="col-xl-6 col-12 blog-left">
            <div class="post-item">
              <div class="post-inner">
                <div class="post-thumb"><a href="#"><img src="assets/images/blog/01.jpg" alt="petuk-blog"></a></div>
                <div class="post-content">
                  <h5><a href="#">Center What For Semicon Remoing.</a></h5><a href="#" class="date">22 December 2019</a>
                  <p>Drama enable wordwid action team where Motin Was Proce Aramin Raher Conven Cuvas rama enabe wordwd
                    acton team herea mnes Uroced Aran Manu Produ Raher Convene Cuva</p><a href="#"
                    class="food-btn"><span>Read More</span></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-6 col-12 blog-right">
            <div class="col-md-6 col-12">
              <div class="post-item">
                <div class="post-inner">
                  <div class="post-thumb"><a href="#"><img src="assets/images/blog/02.jpg" alt="petuk-blog"></a></div>
                  <div class="post-content">
                    <h6><a href="#">Forin Semcon Remon..</a></h6><a href="#" class="date">22 December 2019</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-12">
              <div class="post-item">
                <div class="post-inner">
                  <div class="post-thumb"><a href="#"><img src="assets/images/blog/03.jpg" alt="petuk-blog"></a></div>
                  <div class="post-content">
                    <h6><a href="#">Forin Semcon Remon..</a></h6><a href="#" class="date">22 December 2019</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-12">
              <div class="post-item">
                <div class="post-inner">
                  <div class="post-thumb"><a href="#"><img src="assets/images/blog/04.jpg" alt="petuk-blog"></a></div>
                  <div class="post-content">
                    <h6><a href="#">Forin Semcon Remon..</a></h6><a href="#" class="date">22 December 2019</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-12">
              <div class="post-item">
                <div class="post-inner">
                  <div class="post-thumb"><a href="#"><img src="assets/images/blog/05.jpg" alt="petuk-blog"></a></div>
                  <div class="post-content">
                    <h6><a href="#">Forin Semcon Remon..</a></h6><a href="#" class="date">22 December 2019</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="all-blog-btn text-center"><a href="#" class="food-btn"><span>more blog posts</span></a></div>
      </div>
    </div>
  </section><!-- Blog Section Ending here -->
  <!-- Footer Section Start Here -->
  <footer class="footer">
    <div class="bg-shape-style"></div>
    <div class="container">
      <div class="footer-top">
        <div class="footer-area text-center">
          <div class="footer-logo"><a href="index.html"><img src="assets/images/header/footer/01.png"
                alt="footer-logo"></a></div>
          <div class="scocial-media"><a href="#" class="facebook"><i class="icofont-facebook"></i></a><a href="#"
              class="twitter"><i class="icofont-twitter"></i></a><a href="#" class="linkedin"><i
                class="icofont-linkedin"></i></a><a href="#" class="vimeo"><i class="icofont-vimeo"></i></a></div>
          <div class="footer-menu">
            <ul>
              <li><a href="#">Home</a></li>
              <li><a href="#">How it works?</a></li>
              <li><a href="#">Menus</a></li>
              <li><a href="#">Chefs</a></li>
              <li><a href="#">Recipes</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="footer-bottom text-center">
        <p>&copy; 2019 <a href="http://www.bootstrapmb.com/"><span>Mezban</span></a>Design by <a
            href="#"><span>FoxCoders</span></a>.</p>
      </div>
    </div>
  </footer><!-- Footer Section Ending Here -->
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
  <script>var $target_end=$(".best-of-the-week");</script>
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