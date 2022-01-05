<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AI Home Trainer</title>
    
    <!--  Favicons=============================================-->
	 <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    <!--  Stylesheets =============================================-->
    <!-- Default stylesheets-->
    <link href="../resources/aihometrainer/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="../resources/aihometrainer/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Volkhov:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/animate.css/animate.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <link href="../resources/aihometrainer/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="../resources/aihometrainer/css/colors/default.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <link href="../resources/aihometrainer/css/main.css" rel="stylesheet">
	<link href="../resources/css/PhoneCSS.css" rel="stylesheet">	     
    
    
	<style>
	
		img#sub_img_size{
			  width: 100%;
		 	 height: 465px;
		 	 object-fit: cover;
		 	 vertical-align: middle; }
	    
		div#img_margin{
			padding-rignt:30px;
			padding-left:30px; }   
			 
	</style>   
 
   </head>
  
   <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
      
<!-- 1. 헤더 ######### 헤더바  + 사이드바 시작! ########### -->
      
    <!-- 헤더바 시작! -->
   	<nav>
	   <div class="logo">
	       <a href="../index.do">DO<em>GETHER</em></a>
	   </div>
	    <div class="menu-icon">
	       <span></span>
	    </div>
	</nav>      
	<!-- 헤더바 끝! -->

	<!-- 사이드바 시작! -->
	<section class="overlay-menu">
		<div class="container">
			<div class="row">
				<div class="main-menu">
					<ul id="non_padding">
	                  <li><a href="../runninggoo/">런닝구</a></li>
	                  <li><a href="../aihometrainer/">AI홈트레이너</a></li>
	                  <li><a href="../boast/">자랑하기</a></li>
	                  <li><a href="../shoppingMall/">쇼핑몰</a></li>
	                  <li><a href="../healthcenter/">Inbody 측정 보건소</a></li>
	                  <li><a href="../sleep/">수면시간계산기</a></li>
	                  <li><a href="../mypage/">마이페이지</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- 사이드바 끝! -->
	
<!-- 1. 헤더 ######### 헤더바  + 사이드바 끝! ########### -->
  
  
<!-- 2. 메뉴 리스트 ######### 시작! ########### -->  
   
      <section class="module pb-0" id="works">
        
	        <div class="container">
	            <div class="row">
	              <div class="col-sm-6 col-sm-offset-3">
	                <h2 class="module-title font-alt">Exercise by Type</h2>
	                <div class="module-subtitle font-serif"></div>
	              </div>
	            </div>
	          </div>
	       
	         <div class="container">
	            <div class="row">
	              <div class="col-sm-12">
	                <ul class="filter font-alt" id="filters2">
		                  <li><a class="current2 wow fadeInUp" href="#" data-filter2="*">All</a></li>
		                
		                  <li><a class="wow fadeInUp"  id="2_Yusanso" href="#" data-filter2=".yusanso" data-wow-delay="0.4s">유산소</a></li>
		                
		                  <li><a class="wow fadeInUp" id="2_Grud  href="#" data-filter2=".grud" data-wow-delay="0.6s">근력운동</a></li>
		                 
		                  <li><a class="wow fadeInUp"  id="2_Yoga" href="#" data-filter2=".yoga" data-wow-delay="0.6s">요가</a></li>
	                </ul>
	              </div>
	           </div>

<!-- 2. 메뉴 리스트 ######### 끝! ########### -->  
  
  
<!-- 3. 운동 리스트 ######### 시작! ########### --> 
      
      <div class="main showcase-page">
      	 <section class="module-medium" id="demos">
            <div class="container">
              <div class="row multi-columns-row" id="demos2">
            
            	 <div class="col-md-4 col-sm-6 col-xs-12 yusanso" id="img_margin"><a class="content-box" href="../aihometrainer/3_starjump.do">
		              <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/starjump22.gif" alt="Main Demo"></div>
		           	  <h3 class="content-box-title font-serif">Star Jump</h3></a></div>
		           	 
	              <div class="col-md-4 col-sm-6 col-xs-12 grud" id="img_margin"><a class="content-box" href="../aihometrainer/3_BasicPlank.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/basicPlank.jpg" alt="Main Demo"></div>
	               	  <h3 class="content-box-title font-serif">Basic Plank</h3></a></div>
	
		         <div class="col-md-4 col-sm-6 col-xs-12 grud" id="img_margin"><a class="content-box" href="../aihometrainer/3_shoulderPress.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/sholderPress22.gif" alt="Shop"></div>
	                  <h3 class="content-box-title font-serif">Shoulder Press</h3></a></div>	
                
	              <div class="col-md-4 col-sm-6 col-xs-12 grud" id="img_margin"><a class="content-box" href="../aihometrainer/3_PushUp.do">
	                  <div class="content-box-image"><img id="sub_img_size"  src="../resources/aihometrainer/images/pushUpMain.gif" alt="Photography"></div>
	                  <h3 class="content-box-title font-serif">Push Up</h3></a></div>

	              <div class="col-md-4 col-sm-6 col-xs-12 grud" id="img_margin"><a class="content-box" href="../aihometrainer/3_dumbbellLetpulldown.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/Rllsss.gif" alt="Finance"></div>
	                  <h3 class="content-box-title font-serif">Dumbbell Let Pull Down</h3></a></div>
	                  
	              <div class="col-md-4 col-sm-6 col-xs-12 grud" id="img_margin"><a class="content-box" href="../aihometrainer/3_Squat.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/3-squrt.jpg" alt="One Page"></div>
	                  <h3 class="content-box-title font-serif">Squat</h3></a></div>
         
	              <div class="col-md-4 col-sm-6 col-xs-12 yoga" id="img_margin"><a class="content-box" href="../aihometrainer/3_tree.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/tree_yoga2.jpg" alt="One Page"></div>
	                  <h3 class="content-box-title font-serif">Tree Pose</h3></a></div>	    
 
	              <div class="col-md-4 col-sm-6 col-xs-12 yusanso" id="img_margin"><a class="content-box" href="../aihometrainer/3_burpeeTest.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/buppeeTest.jpg" alt="Agency"></div>
	                  <h3 class="content-box-title font-serif">Burpee Test</h3> </a></div>
	                  
	              <div class="col-md-4 col-sm-6 col-xs-12 grud" id="img_margin"><a class="content-box" href="../aihometrainer/3_SideSquat.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/wideSqurtMain.gif" alt="One Page"></div>
	                  <h3 class="content-box-title font-serif">Wide squat</h3></a></div>	                                
              
	              <div class="col-md-4 col-sm-6 col-xs-12 grud" id="img_margin"><a class="content-box" href="../aihometrainer/3_ButterFly.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/butterfly22.jpg" alt="Portfolio"></div>
	                  <h3 class="content-box-title font-serif">ButterFly</h3></a></div>
	                  
	              <div class="col-md-4 col-sm-6 col-xs-12 yoga" id="img_margin"><a class="content-box" href="../aihometrainer/3_chairPose.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/chairPose2.jpg" alt="Restaurant"></div>
	                  <h3 class="content-box-title font-serif">Chair Pose</h3></a></div>

	              <div class="col-md-4 col-sm-6 col-xs-12 grud" id="img_margin"><a class="content-box" href="../aihometrainer/3_SRR.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/SRR333.jpg" alt="One Page"></div>
	                  <h3 class="content-box-title font-serif">Side Lateral Raise</h3></a></div>
	

           	
			   </div>
            </div>
         </section> <!-- class="module-medium" -->
      </div><!-- class="main showcase-page" -->
      
   </section> <!-- class="module pb-0" -->
   
<!-- 3. 운동 리스트 ######### 끝! ########### -->  
   
        
<!-- 4. 풋터 ######### 시작! ########### -->           
      
			<section class="module-extra-small bg-dark">
	          <div class="container">
	            <div class="row">
	              <div class="col-sm-6 col-md-8 col-lg-9">
	                <div class="callout-text font-alt">
	                  <br> <p style="margin-bottom: 0px;">Copyright © 2018 Company Name | Designed by TemplateMo</p>
	                </div>
	              </div>
				 </div>
	          </div>
	        </section>
	        
 <!-- 4. 풋터 ######### 끝! ########### -->  
        
      </div>
      <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
      
    </main>
    
    
    <!--  JavaScripts =============================================-->
    <script src="../resources/aihometrainer/lib/jquery/dist/jquery.js"></script>
    <script src="../resources/aihometrainer/lib/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../resources/aihometrainer/lib/wow/dist/wow.js"></script>
    <script src="../resources/aihometrainer/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
    <script src="../resources/aihometrainer/lib/isotope/dist/isotope.pkgd.js"></script>
    <script src="../resources/aihometrainer/lib/imagesloaded/imagesloaded.pkgd.js"></script>
    <script src="../resources/aihometrainer/lib/flexslider/jquery.flexslider.js"></script>
    <script src="../resources/aihometrainer/lib/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="../resources/aihometrainer/lib/smoothscroll.js"></script>
    <script src="../resources/aihometrainer/lib/magnific-popup/dist/jquery.magnific-popup.js"></script>
    <script src="../resources/aihometrainer/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
    <script src="../resources/aihometrainer/js/plugins.js"></script>
    <script src="../resources/aihometrainer/js/main.js"></script>   
    <script src="../resources/aihometrainer/js/add_plugins.js"></script>
    <script src="../resources/aihometrainer/js/add_main.js"></script>
    
    
  </body>
</html>