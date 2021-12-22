<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>DOGETHER</title>
    
<link rel="stylesheet" href="./resources/css/templatemo-style.css">
<link rel="stylesheet" href="./resources/css/Calander.css">
<script src="./resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="./resources/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
<script src="./resources/js/vendor/bootstrap.min.js"></script>
<script src="./resources/js/plugins.js"></script>
<script src="./resources/js/main.js"></script>
    <!--  
    Favicons
    =============================================
    -->
    <link rel="apple-touch-icon" sizes="57x57" href="./resources/img/shoppingmall/images/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="./resources/img/shoppingmall/images/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="./resources/img/shoppingmall/images/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="./resources/img/shoppingmall/images/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="./resources/img/shoppingmall/images/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="./resources/img/shoppingmall/images/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="./resources/img/shoppingmall/images/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="./resources/img/shoppingmall/images/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="./resources/img/shoppingmall/images/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="./resources/img/shoppingmall/images/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./resources/img/shoppingmall/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="./resources/img/shoppingmall/images/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./resources/img/shoppingmall/images/favicons/favicon-16x16.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="./resources/img/shoppingmall/images/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!--  
    Stylesheets
    =============================================
    
    -->
    <!-- Default stylesheets-->
    <link href="./resources/img/shoppingmall/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Volkhov:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/animate.css/animate.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
    <link href="./resources/img/shoppingmall/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="./resources/img/shoppingmall/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="./resources/img/shoppingmall/css/colors/default.css" rel="stylesheet">
  </head>
  
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
   
   
    <main>
      <div class="page-loader">
        <div class="loader">로딩중...</div>
      </div>
      
      <!-- nav바---------------------------------------------------------- -->
		<nav>
			<div class="logo">
				<a href="index.do">DO<em>GETHER</em></a>
			</div>
	    	<div class="menu-icon">
	    		<span></span>
			</div>
		</nav>
      <!-- nav바---------------------------------------------------------- -->
      
      <div class="main">
      
      	<!-- 상단 큰부분 -->
        <section class="module bg-dark-60 shop-page-header" data-background="./resources/img/shoppingmall/images/shop/product-page-bg.jpg">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">DOGETHER PRODUCTS</h2>
                <div class="module-subtitle font-serif">인기상품 특가상품을 만나보세요.</div>
                <a class="section-scroll btn btn-border-w btn-round" href="shoppingmall.do">Home</a>
                <a class="section-scroll btn btn-border-w btn-round" href="shoppingCart.do">내 장바구니</a>
              </div>
            </div>
          </div>
        </section>
        
        <hr class="divider-w">
        
    
        <section class="module-small">
          <div class="container">
            <div class="row multi-columns-row">
						      <c:forEach items="${productList}" var="product">
						              <div class="col-sm-6 col-md-4 col-lg-4">
						                <div class="shop-item">
						                  <div class="shop-item-image"><img src="./resources/img/shoppingmall/productimgs/${product.product_realfname}" />
						                    <div class="shop-item-detail"><a class="btn btn-round btn-b" href="detailProduct.do?ProductID=${product.productID}"><span class="icon-basket">상세보기</span></a></div>
						                  </div>
						                  <h4 class="shop-item-title font-alt"><a href="detailProduct.do?ProductID=${product.productID}">${product.productName}</a></h4>${product.productPrice}₩
						                </div>
						              </div>
						      </c:forEach>
            </div>
          </div>
        </section>
        
      
        <hr class="divider-d">
        
        
        
        
        <div><!-- nav바 메뉴 -->
    <section class="overlay-menu">
      <div class="container">
        <div class="row">
          <div class="main-menu">
              <ul>
              
                  <li>
                      <a href="#">런닝구</a>
                  </li>
                  <li>
                      <a href="#">Gym 예약할까</a>
                  </li>
                  <li>
                      <a href="#">온라인 PT</a>
                  </li>
                  <li>
                      <a href="#">자랑하기</a>
                  </li>
                  <li>
                      <a href="#">BMI 측정가능 보건소</a>
                  </li>
                  <li>
                      <a href="#">쇼핑몰</a>
                  </li>
              </ul>
          </div>
        </div>
      </div>
    </section>
    </div>
        
        
        
        
        
     
        <div><!-- nav바 메뉴 -->
    <section class="overlay-menu">
      <div class="container">
        <div class="row">
          <div class="main-menu">
              <ul>
              
                  <li>
                      <a href="#">런닝구</a>
                  </li>
                  <li>
                      <a href="#">Gym 예약할까</a>
                  </li>
                  <li>
                      <a href="#">온라인 PT</a>
                  </li>
                  <li>
                      <a href="#">자랑하기</a>
                  </li>
                  <li>
                      <a href="#">BMI 측정가능 보건소</a>
                  </li>
                  <li>
                      <a href="#">쇼핑몰</a>
                  </li>
              </ul>
          </div>
        </div>
      </div>
    </section>
    </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
	      <!-- footer---------------------------------------------------------- -->
		<footer id="footer">
	        <div class="container-fluid">
	            <div class="col-md-12">
	                <p id="ff">Copyright &copy; 2018 Company Name 
				       | Designed by TemplateMo
				    </p>
	            </div>
	        </div>
		</footer>
		<!-- footer---------------------------------------------------------- -->
	      
      
      
      
      
      </div>
      <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
    </main>
    <!--  
    JavaScripts
    =============================================
    -->
    <script src="./resources/img/shoppingmall/lib/jquery/dist/jquery.js"></script>
    <script src="./resources/img/shoppingmall/lib/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="./resources/img/shoppingmall/lib/wow/dist/wow.js"></script>
    <script src="./resources/img/shoppingmall/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
    <script src="./resources/img/shoppingmall/lib/isotope/dist/isotope.pkgd.js"></script>
    <script src="./resources/img/shoppingmall/lib/imagesloaded/imagesloaded.pkgd.js"></script>
    <script src="./resources/img/shoppingmall/lib/flexslider/jquery.flexslider.js"></script>
    <script src="./resources/img/shoppingmall/lib/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="./resources/img/shoppingmall/lib/smoothscroll.js"></script>
    <script src="./resources/img/shoppingmall/lib/magnific-popup/dist/jquery.magnific-popup.js"></script>
    <script src="./resources/img/shoppingmall/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
    <script src="./resources/img/shoppingmall/js/plugins.js"></script>
    <script src="./resources/img/shoppingmall/js/main.js"></script>
  </body>
</html>