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
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png"><!-- animate scss -->
    <link rel="stylesheet" href="assets/css/animate.css"><!-- bootstarp css -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"><!-- icofont -->
    <link rel="stylesheet" href="assets/css/icofont.min.css"><!-- lightcase css -->
    <link rel="stylesheet" href="assets/css/lightcase.css"><!-- swiper css -->
    <link rel="stylesheet" href="assets/css/swiper.min.css"><!-- cusyom scss -->
    <link rel="stylesheet" href="assets/css/style.css">
    <title>FOMA-검색한 음식 표시</title>
</head>

<body>
    <!--음식정보 출력 멤버 선언 -->
                                             <%
              ArrayList<FMember> f = (ArrayList<FMember>)session.getAttribute("selectFMember");
			  %>  
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
            <div class="header-logo"><a href="index.html" class="logo"><img src="assets/images/logo/01.png"
                        alt="logo"></a></div>
            <div class="header-bar"><span></span><span></span><span></span></div>
        </nav>
        <nav class="menu">
            <div class="mobile-menu-area d-xl-none">
                <div class="mobile-menu-area-inner scrollbar">
                    <div class="mobile-search"><input type="text" placeholder="Search Here........."><button
                            type="submit"><i class="icofont-search-2"></i></button></div>
                    <ul>
                        <li><a href="#0">Home</a>
                            <ul>
                                <li><a href="index.html">Home Page One</a></li>
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
                        <li><a class="active" href="#0">Shop</a>
                            <ul>
                                <li><a href="shop-page.html">Shop Page</a></li>
                                <li><a class="active" href="shop-single.html">Shop Single style-1</a></li>
                                <li><a href="shop-single-2.html">Shop Single style-2</a></li>
                                <li><a href="cart-page.html">Cart Page</a></li>
                            </ul>
                        </li>
                        <li><a href="contact-us.html">Contact</a></li>
                    </ul>
                    <div class="scocial-media"><a href="#" class="facebook"><i class="icofont-facebook"></i></a><a
                            href="#" class="twitter"><i class="icofont-twitter"></i></a><a href="#" class="linkedin"><i
                                class="icofont-linkedin"></i></a><a href="#" class="vimeo"><i
                                class="icofont-vimeo"></i></a></div>
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
                        <li><a href="#0">Home</a>
                            <ul>
                                <li><a href="index.html">Home Page One</a></li>
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
                        <li><a class="active" href="#0">Shop</a>
                            <ul>
                                <li><a href="shop-page.html">Shop Page</a></li>
                                <li><a class="active" href="shop-single.html">Shop Single style-1</a></li>
                                <li><a href="shop-single-2.html">Shop Single style-2</a></li>
                                <li><a href="cart-page.html">Cart Page</a></li>
                            </ul>
                        </li>
                        <li><a href="contact-us.html">Contact</a></li>
                    </ul>
                </div>
                <div class="author-option">
                    <div class="author-area">
                        <div class="city-lang"><img src="assets/images/header/01.png" alt="city-lang"><select
                                name="lang" id="lang">
                                <option value="1">ENG</option>
                                <option value="2">BAN</option>
                                <option value="3">ESP</option>
                            </select></div>
                        <div class="cart-option"><img src="assets/images/header/cart.png" alt="shop-cart">
                            <div class="count-item">04</div>
                            <div class="cart-content">
                                <div class="cart-title">
                                    <div class="add-item">4 Items Added</div>
                                    <div class="list-close"><a href="#">Close</a></div>
                                </div>
                                <div class="cart-scr scrollbar">
                                    <div class="cart-con-item">
                                        <div class="cart-item">
                                            <div class="cart-inner">
                                                <div class="cart-top">
                                                    <div class="thumb"><a href="#"><img
                                                                src="assets/images/popular-food/01.jpg" alt=""></a>
                                                    </div>
                                                    <div class="content"><a href="#">Split Remedy Split End Shampoo</a>
                                                    </div>
                                                    <div class="remove-btn"><a href="#"><i
                                                                class="icofont-close"></i></a></div>
                                                </div>
                                                <div class="cart-bottom">
                                                    <div class="sing-price">Tk. 140</div>
                                                    <div class="cart-plus-minus">
                                                        <div class="dec qtybutton">-</div>
                                                        <div class="dec qtybutton">-</div><input
                                                            class="cart-plus-minus-box" type="text" name="qtybutton"
                                                            value="1">
                                                        <div class="inc qtybutton">+</div>
                                                        <div class="inc qtybutton">+</div>
                                                    </div>
                                                    <div class="total-price">Tk. 280.00</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-item">
                                            <div class="cart-inner">
                                                <div class="cart-top">
                                                    <div class="thumb"><a href="#"><img
                                                                src="assets/images/popular-food/02.jpg" alt=""></a>
                                                    </div>
                                                    <div class="content"><a href="#">Split Remedy Split End Shampoo</a>
                                                    </div>
                                                    <div class="remove-btn"><a href="#"><i
                                                                class="icofont-close"></i></a></div>
                                                </div>
                                                <div class="cart-bottom">
                                                    <div class="sing-price">Tk. 140</div>
                                                    <div class="cart-plus-minus">
                                                        <div class="dec qtybutton">-</div>
                                                        <div class="dec qtybutton">-</div><input
                                                            class="cart-plus-minus-box" type="text" name="qtybutton"
                                                            value="1">
                                                        <div class="inc qtybutton">+</div>
                                                        <div class="inc qtybutton">+</div>
                                                    </div>
                                                    <div class="total-price">Tk. 280.00</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-item">
                                            <div class="cart-inner">
                                                <div class="cart-top">
                                                    <div class="thumb"><a href="#"><img
                                                                src="assets/images/popular-food/03.jpg" alt=""></a>
                                                    </div>
                                                    <div class="content"><a href="#">Split Remedy Split End Shampoo</a>
                                                    </div>
                                                    <div class="remove-btn"><a href="#"><i
                                                                class="icofont-close"></i></a></div>
                                                </div>
                                                <div class="cart-bottom">
                                                    <div class="sing-price">Tk. 140</div>
                                                    <div class="cart-plus-minus">
                                                        <div class="dec qtybutton">-</div>
                                                        <div class="dec qtybutton">-</div><input
                                                            class="cart-plus-minus-box" type="text" name="qtybutton"
                                                            value="1">
                                                        <div class="inc qtybutton">+</div>
                                                        <div class="inc qtybutton">+</div>
                                                    </div>
                                                    <div class="total-price">Tk. 280.00</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-item">
                                            <div class="cart-inner">
                                                <div class="cart-top">
                                                    <div class="thumb"><a href="#"><img
                                                                src="assets/images/popular-food/04.jpg" alt=""></a>
                                                    </div>
                                                    <div class="content"><a href="#">Split Remedy Split End Shampoo</a>
                                                    </div>
                                                    <div class="remove-btn"><a href="#"><i
                                                                class="icofont-close"></i></a></div>
                                                </div>
                                                <div class="cart-bottom">
                                                    <div class="sing-price">Tk. 140</div>
                                                    <div class="cart-plus-minus">
                                                        <div class="dec qtybutton">-</div>
                                                        <div class="dec qtybutton">-</div><input
                                                            class="cart-plus-minus-box" type="text" name="qtybutton"
                                                            value="1">
                                                        <div class="inc qtybutton">+</div>
                                                        <div class="inc qtybutton">+</div>
                                                    </div>
                                                    <div class="total-price">Tk. 280.00</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cart-scr-bottom">
                                    <ul>
                                        <li>
                                            <div class="title">Subtotal</div>
                                            <div class="price">Tk. 1045.00</div>
                                        </li>
                                        <li>
                                            <div class="title">Shipping</div>
                                            <div class="price">Tk. 40.00</div>
                                        </li>
                                        <li>
                                            <div class="title">Cart Total</div>
                                            <div class="price">Tk. 1085.00</div>
                                        </li>
                                    </ul><a href="#" class="food-btn"><span>Place Order</span></a>
                                </div>
                            </div>
                        </div>
                        <div class="author-account">
                            <div class="author-icon"><img src="assets/images/chef/author/08.jpg" alt="author"></div>
                            <div class="author-select"><select name="author-select" id="author-select">
                                    <option value="1">My Account</option>
                                    <option value="2">Log Out</option>
                                </select></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header><!-- header section ending -->
    <!-- Page Header Section Start Here -->
    <section class="page-header">
        <div class="shape-1"><img src="assets/images/banner/shape/01.png" alt="banner"></div>
        <div class="shape-2"><img src="assets/images/banner/shape/02.png" alt="banner"></div>
        <div class="container">
            <div class="page-title text-center">
                <h3>🍵<%=f.get(0).getFd_name()%></h3>
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Search</a></li>
                    <li>Search Results</li>
                </ul>
            </div>
        </div>
    </section><!-- Page Header Section Ending Here -->
    <!-- Popular Home Chef Section Start Here -->
    <div class="shop-page single padding-tb pb-0">
        <div class="container">
            <div class="section-wrapper">
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-12">
                        <article>
                            <div class="shop-single">
                                <div class="row justify-content-center">
                                    <div class="col-md-6 col-12">
                                        <div class="swiper-container gallery-top">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide">
                                                    <div class="shop-item">
                                                        <div class="shop-thumb"><img
                                                                src="assets/images/shop/single/01.jpg"
                                                                alt="shop-single"></div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="shop-item">
                                                        <div class="shop-thumb"><img
                                                                src="assets/images/shop/single/02.jpg"
                                                                alt="shop-single"></div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="shop-item">
                                                        <div class="shop-thumb"><img
                                                                src="assets/images/shop/single/03.jpg"
                                                                alt="shop-single"></div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="shop-item">
                                                        <div class="shop-thumb"><img
                                                                src="assets/images/shop/single/04.jpg"
                                                                alt="shop-single"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                                                    
              <%
				//세션에서 정보가 있다면 정보를 봅아서 출력하기					
						if(f!=null){%>
							<h4><%=f.get(0).getFd_name()%></h4>
						<% }%>
						<br>
							
                                        <div class="swiper-container gallery-thumbs">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide">
                                                    <div class="shop-item">
                                                        <div class="shop-thumb"><img
                                                                src="assets/images/popular-food/01.jpg"
                                                                alt="shop-single"></div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="shop-item">
                                                        <div class="shop-thumb"><img
                                                                src="assets/images/popular-food/02.jpg"
                                                                alt="shop-single"></div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="shop-item">
                                                        <div class="shop-thumb"><img
                                                                src="assets/images/popular-food/03.jpg"
                                                                alt="shop-single"></div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="shop-item">
                                                        <div class="shop-thumb"><img
                                                                src="assets/images/popular-food/04.jpg"
                                                                alt="shop-single"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="shop-single-content">
                                            <div class="title">
                                            <!-- 음식 정보 출력단 -->
                                            <!--음식 분류  -->
                                                <h5><a href="#"><%= f.get(0).getFd_category_big_name()%></a></h5>
                                                <div class="p-food-group"><span>✔️Type of food :</span>
                                                <a href="#"><%=f.get(0).getFd_general_name() %></a>
                                                <%-- <a href="#"><%=f.get(0).getFd_category_small_name() %></a>
                                                <a href="#"><%=f.get(0).getFd_category_micro_name() %></a></div>
                                                <div class="rating"><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i><span>(2
                                                        Customer Reviews)</span></div> --%>
                                            </div>
                                            <div class="desc">
                        <!--음식 영양소 , 조건문을 통해 자료없음을 표시해줘야한다. -->
                                                <p>-칼로리(kcal) : <%=Math.round(f.get(0).getFd_ing_cal()) %></p>
                                                <p>-단백질(g) : <%=Math.round(f.get(0).getFd_ing_protein()) %></p>
                                                <p>-탄수화물(g) : <%=Math.round(f.get(0).getFd_ing_carbohydrate()) %></p>
                                                <p>-포화지방(g) : <%=String.format("%10.2f",(f.get(0).getFd_ing_saturated_fatty()*100)/100.0) %></p>	
                                                <p>-트랜스지방(g) : <%=String.format("%10.2f",(f.get(0).getFd_ing_trans_fatty()*100)/100.0) %></p>
                                                <p>-총 지방(g) : <%=Math.round(f.get(0).getFd_ing_fatty()) %></p>
                                                <p>-나트륨(mg) : <%=Math.round(f.get(0).getFd_ing_salt()) %></p>
                                                <p>-당류(g) : <%=String.format("%10.2f",(f.get(0).getFd_ing_sugar()*100)/100.0) %></p>
                                                <p>-1회섭취량 : <%=f.get(0).getFd_intake_once()%></p>
                                           
                                            <%-- <c:choose>
                                            <c:when test="${f.get(0).getFd_ing_dietaryfiber() ne -1}">
                                           <p>식이섬유 : 자료없음<p>
                                            </c:when>
                                            <c:otherwise>
                                            <p>식이섬유 : <%=f.get(0).getFd_ing_dietaryfiber()%></p>
                                            	</c:otherwise>
                                            	 </c:choose>
                                             <c:choose>
                                            <c:when test="${f.get(0).getFd_intake_once() ne -1}">
                                           <p>1회 섭취량 : 자료없음<p>
                                            </c:when>
                                            <c:otherwise>
                                            <p>1회섭취량 : <%=f.get(0).getFd_intake_once()%></p>
                                            	</c:otherwise>
                                            	 </c:choose>	 --%>
                                            	
                                            	
                                            	
		
                                                <!-- <ul>
                                                    <li>20 MP front & 28 megapixel CMOS rear camera</li>
                                                    <li>4.5 inch HD Touch Screen (1280 x 720)</li>
                                                    <li>1.4 GHz Quad Core™ Processor</li>
                                                    <li>Android 4.4 KitKat OS</li>
                                                </ul>
                                                <div class="quyality">
                                                    <p><span>SKU</span>: FW511948218</p>
                                                </div> -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-xl-4 col-md-5 col-12">
                        <aside>
                            <div class="popular-chef-widget">
                                <div class="food-quyality">
                                    <div class="section-header">
                                        <p>Availability: <span>28 in Stock</span></p>
                                    </div>
                                    <div class="section-wrapper">
                                        <h5>$35.00</h5>
                                        <p>Quantity</p><label><input type="number" placeholder="2"></label><a
                                            href="index.html" class="food-btn style-2"><span>Add to Cart</span></a>
                                        <ul>
                                            <li><a href="#"><i class="icofont-heart-alt"></i>Wishlist</a></li>
                                            <li><a href="#"><i class="icofont-drag2"></i>Compare</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- Popular Home Chef Section Ending Here -->
    <!-- Review Section Start Here -->
    <div class="review single padding-tb">
        <div class="container">
            <div class="section-wrapper">
                <div class="related">
                    <ul class="tab-bar">
                        <li class="tablinks" id="defaultOpen" onclick="openCity(event, 'one')"><span>Accessories</span>
                        </li>
                        <li class="tablinks" onclick="openCity(event, 'two')"><span>Description</span></li>
                        <li class="tablinks" onclick="openCity(event, 'three')"><span>Specification</span></li>
                        <li class="tablinks" onclick="openCity(event, 'four')"><span>Reviews</span></li>
                    </ul>
                    <div id="one" class="tabcontent">
                        <div class="popular-foods">
                            <div class="section-wrapper">
                                <div class="row justify-content-center align-items-center">
                                    <div class="col-xl-3 col-md-6 col-12">
                                        <div class="product-item">
                                            <div class="product-thumb"><img src="assets/images/product/01.jpg"
                                                    alt="food-product"><span class="price">$10</span></div>
                                            <div class="product-content">
                                                <p>Mexican Food</p>
                                                <h6><a href="#">Cream Chicken Chiladas</a></h6>
                                                <div class="rating"><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6 col-12">
                                        <div class="product-item">
                                            <div class="product-thumb"><img src="assets/images/product/02.jpg"
                                                    alt="food-product"><span class="price">$20</span></div>
                                            <div class="product-content">
                                                <p>Mexican Food</p>
                                                <h6><a href="#">Cream Chicken Chiladas</a></h6>
                                                <div class="rating"><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6 col-12">
                                        <div class="product-item">
                                            <div class="product-thumb"><img src="assets/images/product/03.jpg"
                                                    alt="food-product"><span class="price">$30</span></div>
                                            <div class="product-content">
                                                <p>Mexican Food</p>
                                                <h6><a href="#">Cream Chicken Chiladas</a></h6>
                                                <div class="rating"><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6 col-12">
                                        <div class="p-food-item">
                                            <div class="p-food-inner">
                                                <div class="food-quyality">
                                                    <div class="section-header">
                                                        <p>Availability: <span>28 in Stock</span></p>
                                                    </div>
                                                    <div class="section-wrapper">
                                                        <h5>$60.00</h5>
                                                        <p>For 3 item(s)</p><a href="#" class="food-btn"><span>Back to
                                                                Home</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="two" class="tabcontent">
                        <div class="Description">
                            <h5>50 Foods That Are Super Healthy</h5>
                            <p>Here we provide details of the top 15 foods considered to be the most healthy, according
                                to surveys and sources across the United States and Western Europe. There are numerous
                                diets that promote weight loss, sometimes in an unhealthy way. Fad crash dieting, for
                                instance, is potentially dangerous. At the same time, in America, we eat an estimated
                                100 acres of pizza each day. Understanding which foods are healthful and trying to
                                include them in our diet could benefit the nation.The most important thing to remember,
                                is that a balanced diet is the true secret to healthful eating.</p>
                            <h5>Belgian Cuisine</h5>
                            <p>Here we provide details of the top 15 foods considered to be the most healthy, according
                                to surveys and sources across the United States and Western Europe. There are numerous
                                diets that promote weight loss, sometimes in an unhealthy way. Fad crash dieting, for
                                instance, is potentially dangerous. At the same time, in America, we eat an estimated
                                100 acres of pizza each day. Understanding which foods are healthful and trying to
                                include them in our diet could benefit the nation.The most important thing to remember,
                                is that a balanced diet is the true secret to healthful eating.</p>
                            <p>Here we provide details of the top 15 foods considered to be the most healthy, according
                                to surveys and sources across the United States and Western Europe. There are numerous
                                diets that promote weight loss, sometimes in an unhealthy way. Fad crash dieting, for
                                instance, is potentially dangerous. At the same time, in America, we eat an estimated
                                100 acres of pizza each day. Understanding which foods are healthful and trying to
                                include them in our diet could benefit the nation.The most important thing to remember,
                                is that a balanced diet is the true secret to healthful eating.</p>
                            <p>Here we provide details of the top 15 foods considered to be the most healthy, according
                                to surveys and sources across the United States and Western Europe. There are numerous
                                diets that promote weight loss, sometimes in an unhealthy way. Fad crash dieting, for
                                instance, is potentially dangerous. At the same time, in America, we eat an estimated
                                100 acres of pizza each day. Understanding which foods are healthful and trying to
                                include them in our diet could benefit the nation.The most important thing to remember,
                                is that a balanced diet is the true secret to healthful eating.</p>
                        </div>
                    </div>
                    <div id="three" class="tabcontent">
                        <div class="spe-shop">
                            <div class="tec-spe">
                                <ul>
                                    <li>
                                        <div class="left">Brand</div>
                                        <div class="right">Apple</div>
                                    </li>
                                    <li>
                                        <div class="left">Item Height</div>
                                        <div class="right">18 Millimeters</div>
                                    </li>
                                    <li>
                                        <div class="left">Item Width</div>
                                        <div class="right">31.4 Centimeters</div>
                                    </li>
                                    <li>
                                        <div class="left">Screen Size</div>
                                        <div class="right">13 Inches</div>
                                    </li>
                                    <li>
                                        <div class="left">Item Weight</div>
                                        <div class="right">1.6 Kg</div>
                                    </li>
                                    <li>
                                        <div class="left">Product Dimensions</div>
                                        <div class="right">21.9 x 31.4 x 1.8 cm</div>
                                    </li>
                                    <li>
                                        <div class="left">Item model number</div>
                                        <div class="right">MF841HN/A</div>
                                    </li>
                                    <li>
                                        <div class="left">Processor Brand</div>
                                        <div class="right">Intel</div>
                                    </li>
                                    <li>
                                        <div class="left">Processor Type</div>
                                        <div class="right">Core i5</div>
                                    </li>
                                    <li>
                                        <div class="left">Processor Speed</div>
                                        <div class="right">2.9 GHz</div>
                                    </li>
                                    <li>
                                        <div class="left">RAM Size</div>
                                        <div class="right">8 GB</div>
                                    </li>
                                    <li>
                                        <div class="left">Hard Drive Size</div>
                                        <div class="right">512 GB</div>
                                    </li>
                                    <li>
                                        <div class="left">Hard Disk Technology</div>
                                        <div class="right">Solid State Drive</div>
                                    </li>
                                    <li>
                                        <div class="left">Graphics Coprocessor</div>
                                        <div class="right">Intel Integrated Graphics</div>
                                    </li>
                                    <li>
                                        <div class="left">Graphics Card Description</div>
                                        <div class="right">Integrated Graphics Card</div>
                                    </li>
                                    <li>
                                        <div class="left">Hardware Platform</div>
                                        <div class="right">Mac</div>
                                    </li>
                                    <li>
                                        <div class="left">Operating System</div>
                                        <div class="right">Mac OS</div>
                                    </li>
                                    <li>
                                        <div class="left">Average Battery Life (in hours)</div>
                                        <div class="right">9</div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="four" class="tabcontent">
                        <div class="section-wrapper">
                            <div class="review">
                                <ul class="content">
                                    <li>
                                        <div class="post-thumb"><img src="assets/images/chef/author/07.jpg" alt="shop">
                                        </div>
                                        <div class="post-content">
                                            <div class="content-area">
                                                <div class="entry-meta">
                                                    <div class="posted-on"><a href="#">Britney Doe</a>
                                                        <p>Posted on December 25, 2017 at 6:57 am</p>
                                                    </div>
                                                    <div class="rating"><i class="icofont-star"></i><i
                                                            class="icofont-star"></i><i class="icofont-star"></i><i
                                                            class="icofont-star"></i><i class="icofont-star"></i></div>
                                                </div>
                                                <div class="entry-content">
                                                    <p>Enthusiast build innovativ initiatives before lonterm high-impact
                                                        awesome theme seo psd porta monetize covalent leadership after
                                                        without resource.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-thumb"><img src="assets/images/chef/author/08.jpg" alt="shop">
                                        </div>
                                        <div class="post-content">
                                            <div class="entry-meta">
                                                <div class="posted-on"><a href="#">Jonathan Doe</a>
                                                    <p>Posted on December 25, 2017 at 6:57 am</p>
                                                </div>
                                                <div class="rating"><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i></div>
                                            </div>
                                            <div class="entry-content">
                                                <p>Enthusiast build innovativ initiatives before lonterm high-impact
                                                    awesome theme seo psd porta monetize covalent leadership after
                                                    without resource.</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-thumb"><img src="assets/images/chef/author/09.jpg" alt="shop">
                                        </div>
                                        <div class="post-content">
                                            <div class="entry-meta">
                                                <div class="posted-on"><a href="#">Mack Zucky</a>
                                                    <p>Posted on December 25, 2017 at 6:57 am</p>
                                                </div>
                                                <div class="rating"><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i></div>
                                            </div>
                                            <div class="entry-content">
                                                <p>Enthusiast build innovativ initiatives before lonterm high-impact
                                                    awesome theme seo psd porta monetize covalent leadership after
                                                    without resource.</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-thumb"><img src="assets/images/chef/author/08.jpg" alt="shop">
                                        </div>
                                        <div class="post-content">
                                            <div class="entry-meta">
                                                <div class="posted-on"><a href="#">Jordi Albae</a>
                                                    <p>Posted on December 25, 2017 at 6:57 am</p>
                                                </div>
                                                <div class="rating"><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i><i
                                                        class="icofont-star"></i><i class="icofont-star"></i></div>
                                            </div>
                                            <div class="entry-content">
                                                <p>Enthusiast build innovativ initiatives before lonterm high-impact
                                                    awesome theme seo psd porta monetize covalent leadership after
                                                    without resource.</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <div class="client-review">
                                    <div class="review-form">
                                        <div class="review-title">
                                            <h5>Add A Review</h5>
                                        </div>
                                        <form action="action" class="row">
                                            <div class="col-md-4 col-12"><input type="text" name="name"
                                                    placeholder="Full Name"></div>
                                            <div class="col-md-4 col-12"><input type="text" name="email"
                                                    placeholder="Email Adress"></div>
                                            <div class="col-md-4 col-12">
                                                <div class="ratings"><span class="rating-title">Your Rating :</span>
                                                    <div class="rating"><i class="icofont-star"></i><i
                                                            class="icofont-star"></i><i class="icofont-star"></i><i
                                                            class="icofont-star"></i><i class="icofont-star"></i></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-12"><textarea rows="8"
                                                    placeholder="Type Here Message"></textarea></div>
                                            <div class="col-12"><button type="submit"
                                                    class="food-btn style-2"><span>Submit Review</span></button></div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- Review Section Ending Here -->
    <!-- Footer Section Start Here -->
    <footer class="footer">
        <div class="bg-shape-style"></div>
        <div class="container">
            <div class="footer-top">
                <div class="footer-area text-center">
                    <div class="footer-logo"><a href="index.html"><img src="assets/images/header/footer/01.png"
                                alt="footer-logo"></a></div>
                    <div class="scocial-media"><a href="#" class="facebook"><i class="icofont-facebook"></i></a><a
                            href="#" class="twitter"><i class="icofont-twitter"></i></a><a href="#" class="linkedin"><i
                                class="icofont-linkedin"></i></a><a href="#" class="vimeo"><i
                                class="icofont-vimeo"></i></a></div>
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
    <script src="assets/js/tab.js"></script>
    <script src="assets/js/lightcase.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/functions.js"></script>
</body>

</html>