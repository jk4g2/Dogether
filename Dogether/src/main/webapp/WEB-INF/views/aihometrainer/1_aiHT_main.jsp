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
    <!--  Stylesheets=============================================-->
    <!-- Default stylesheets-->
    <link href="../resources/aihometrainer/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Volkhov:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/animate.css/animate.css" rel="stylesheet">
    <link rel="stylesheet" href="./resources/css/templatemo-style.css">
    <link href="../resources/aihometrainer/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/magnific-popup/dist/magnific-popup.css" rel="stylesheet">
    <link href="../resources/aihometrainer/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../resources/aihometrainer/css/style.css">
    <link id="color-scheme" href="../resources/aihometrainer/css/colors/default.css" rel="stylesheet">
    <link rel="stylesheet" href="../resources/aihometrainer/css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
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

	.block {display:block;}
	.hide {display:none;}
			 
	 
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


<!-- 2. 상단 화면 ######### 사진 + 중간바 시작! ########### -->

      <!-- 상단 gif + 화면 시작!-->
      <section id = "padding-test" class="bg-dark-30 showcase-page-header module parallax-bg" data-background="../resources/aihometrainer/images/main3.gif">
        <div id="titanA" class="titan-caption">
          <div class="caption-content">
	          	<div class="font-alt mb-30 titan-title-size-1">Powerful. More Healthy.</div>
	            <div class="font-alt mb-40 titan-title-size-4">AI HOME TRAINER </div>
	            <a class="section-scroll btn btn-border-w btn-round" href="#newnewnew">GO to EXERCISE</a>
          </div>
        </div>
      </section>
      <!-- 상단 gif + 화면 끝!-->

      <!-- 중간바 시작! -->
      	<div class="bottom" id="bottomA">
          <div class="text-right container hidden-xs"><a id="scrollDownArrow" href="#"><i class="ion-ios7-arrow-thin-down"></i></a></div>
            <div class="signupForm">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                        	<b class="mb10">AI Home Trainer helps you to stay at home safely, achieve your workout goals, and supports your success.</b>
                        </div>
                        <div class="col-md-6 text-right">
                            <form class="form-inline subscribe-form" id="subscription-form" role="form"> </form>
                            <div id="subscription-response"></div>
                        </div>
                    </div>
                </div><!-- container -->
            </div><!--signupForm-->
        </div><!-- bottom -->
      <!-- 중간바 끝! -->
      
<!-- 2. 상단 화면 ######### 사진 + 중간바 끝! ########### -->     
      
<!-- 3. 운동 타입 별 메뉴 리스트 ######### 시작! ########### -->     
		   
		<section class="container py-5" style="height:720px">
		    <div class="row textaa" id="newnewnew" >
		       <div class="col-aa">
					<img src="../resources/aihometrainer/images/Textaaaa.jpg" class="Textaaaa"></a>		
		       </div>
		    </div>  
		        
			<div class="row" id="test2">
				<div id="filters3">				
			
		        <div class="col-12 col-md-4 p-5 mt-3">
	                <a class="forCurrent2" data-filter3=".yusanso"><img id="rounded-circle" src="../resources/aihometrainer/images/yss.jpg" class="rounded-circle img-fluid border" ></a>
		                <h5 class="text-center mt-3 mb-3">유산소<h5>
		        </div>
		        
		        <div class="col-12 col-md-4 p-5 mt-3">
	                <a class="forCurrent2" data-filter3=".grud"><img src="../resources/aihometrainer/images/grud22.jpg" class="rounded-circle img-fluid border"></a>
		                <h2 class="h5 text-center mt-3 mb-3">근력운동</h2>
		        </div>
		        
		        <div class="col-12 col-md-4 p-5 mt-3">
	                <a class="forCurrent2" data-filter3=".yoga"><img src="../resources/aihometrainer/images/yoga3.jpg" class="rounded-circle img-fluid border"></a>
		                <h2 class="h5 text-center mt-3 mb-3">요가</h2>
		        </div>
		     </div>
		     </div>
		  </section> 

<!-- 3. 운동 타입 별 메뉴 리스트 ######### 끝! ########### -->    
 
 
<!-- 4. 몸 부위 별 메뉴 리스트 ######### 시작! ########### -->     
	    
		<div id="gallery" class="grid">
			<div id="filters2">	
					
	        <figure class="effect-bubba">
	            <img src="../resources/aihometrainer/images/all.jpg" alt="img01">
	            <figcaption>
	                <h2>All  <span>exercise</span></h2>
	                <a class="forCurrent1" data-filter2="*"></a>
	            </figcaption>           
	        </figure>
	        
	        <figure class="effect-bubba">
	            <img src="../resources/aihometrainer/images/back1.jpg" alt="img02">
	            <figcaption>
	                <h2>for perfect <span>BACK</span></h2>
	                <p>It is prepared for your healthy posture and <br>core muscles. </p>
	                <a class="forCurrent1" data-filter2=".back"></a>
	            </figcaption>           
	        </figure>
	        
	        <figure class="effect-bubba">
	            <img src="../resources/aihometrainer/images/belly1.jpg" alt="img07">
	            <figcaption>
	                <h2>become good <span>ABS</span> <i>Now</i></h2>
	                <p>You will be able to start your day <br>a little lighter today!</p>              
	                <a class="forCurrent1" data-filter2=".belly"></a>
	            </figcaption>           
	        </figure>
	        
	        <figure class="effect-bubba">
	            <img src="../resources/aihometrainer/images/Arm.jpg" alt="img04">
	            <figcaption>
	                <h2>great <span>arms & </span>shoulders</h2>
	                <p>For an arm like Captain America!</p>
	                <a class="forCurrent1" data-filter2=".arm"></a>
	            </figcaption>           
	        </figure>
	        
	        <figure class="effect-bubba">
	            <img src="../resources/aihometrainer/images/Hip.jpg" alt="img14">
	            <figcaption>
	                <h2>handsome <span>LEGS & HIP</span></h2>
	                <span class="glyphicon glyphicon-star"></span>
	                <span class="glyphicon glyphicon-heart"></span>
	                <span class="glyphicon glyphicon-comment"></span>
	                <p>If you build up your second heart, <br>your leg muscles, you'll be able to spend more energetic days. 
	                	<br>do it now. </p>
	                <a class="forCurrent1" data-filter2=".leg"></a>
	            </figcaption>           
	        </figure>
	        
	        <figure class="effect-bubba">
	            <img src="../resources/aihometrainer/images/core2.jpg" alt="img08">
	            <figcaption>
	                <h2>WHOLE BODY & <span>CORE</span></h2>
	                <p> A strong core will make your day <br>more comfortable.</p>
	                <a class="forCurrent1" data-filter2=".WholeBody"></a>
	            </figcaption>           
	        </figure>
	        
	        </div>
	    </div>
	    
<!-- 4. 몸 부위 별 메뉴 리스트 ######### 끝! ########### -->    
    
    
    
<!-- 5. 화면 하단 ######### 페이지 설명 시작! ########### -->    
	
	 <div class="main">
	 
	        <section class="module">
	          <div class="container">
	            <div class="row multi-columns-row">
	              
	              <div class="col-md-3 col-sm-6 col-xs-12">
	                <div class="features-item">
	                  <div class="features-icon"><span class="icon-lightbulb"></span></div>
	                  <h3 class="features-title font-alt">무료로 개인 트레이너를 소환하세요.</h3>
	                  	 비싼 개인트레이너에 돈을 지불하지 마세요! <br>집에서 Cam 만 있으면 무료로 당신의 <br>퍼스널 트레이너를 소환할 수 있습니다! <br>갯수는 AI트레이너가 세어줄테니, <br>운동 자세에 집중하세요!
	                </div>
	              </div>
	              
	              <div class="col-md-3 col-sm-6 col-xs-12">
	                <div class="features-item">
	                  <div class="features-icon"><span class="icon-tools"></span></div>
	                  <h3 class="features-title font-alt">당신의 목표치를 이끌어줍니다.</h3>
	                  	AI 트레이너가 당신의 운동량의 하루 목표치를 <br>성공할 수 있도록 카운터와 타이머 기능으로 편리하게 운동할 수 있도록 도와주며 격려해줍니다. <br>함께 운동하세요!
	                </div>
	              </div>
	              
	              <div class="col-md-3 col-sm-6 col-xs-12">
	                <div class="features-item">
	                  <div class="features-icon"><span class="icon-tools-2"></span></div>
	                  <h3 class="features-title font-alt">CAM을 준비해주세요.</h3>
	                  	카메라가 없으면 AI 트레이너가 실행되지 않아요. 화상카메라나 핸드폰의 카메라를 준비하세요. CAM은 우리 AI 트레이너의 눈입니다. 
	                </div>
	              </div>
	              
	              <div class="col-md-3 col-sm-6 col-xs-12">
	                <div class="features-item">
	                  <div class="features-icon"><span class="icon-lifesaver"></span></div>
	                  <h3 class="features-title font-alt">밝은색의 옷을 입어주세요!</h3>
	                  	어두운 옷이나 어두운 장소에서는 <br>AI트레이너가 당신의 자세를 정확하게 <br>인식하지 못할 수 있습니다. <br>밝은 색의 옷을 입는 것을 권장합니다.
	                </div>
	              </div>
	              
	            </div>
	          </div>
	        </section> 
   
 <!-- 5. 화면 하단 ######### 페이지 설명 끝! ########### -->      
        
<div id="forScroll" ></div> <!-- 스크롤 포커스를 위해서 만든 div -->
        
<!-- ### 부위별 운동 파트 시작 ### -->  

<div id="part1"  class="part1">   
      
	<!-- 6. 부위별 운동 메뉴 리스트 ######### 시작! ########### -->  

   	<section class="module pb-0" id="works">
        
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Exercise by body part</h2>
                <div class="module-subtitle font-serif"></div>
              </div>
            </div>
          </div>
          
          <div class="container">
            <div class="row">
              <div class="col-sm-12" >
                <ul class="filter font-alt" id="filters2">
	                  <li><a class="current2 wow fadeInUp" href="#" data-filter2="*">All</a></li>
	                  
	                  <li><a class="wow fadeInUp" data-filter2=".back" data-wow-delay="0.4s">back</a></li>
	                 
	                  <li><a class="wow fadeInUp" data-filter2=".belly" data-wow-delay="0.4s">ABS</a></li>
	                 
	                  <li><a class="wow fadeInUp" data-filter2=".arm" data-wow-delay="0.6s">arm & shoulder</a></li>
	                 
	                  <li><a class="wow fadeInUp"  data-filter2=".leg" data-wow-delay="0.6s">leg & hip</a></li>
	                
	                  <li><a class="wow fadeInUp" data-filter2=".WholeBody" data-wow-delay="0.6s">whole body & Core</a></li>
                </ul>
              </div>
            </div>

	<!-- 6. 부위별 운동 메뉴 리스트 ######### 끝! ########### -->  
 
 
 
 
	<!-- 7. 부위별 운동 운동 리스트 ######### 시작! ########### -->  
      
      <div class="main showcase-page">
      	<section class="module-medium" id="demos">
           <div class="container">
             <div class="row multi-columns-row" id="demos2">
            
	            <div class="col-md-4 col-sm-6 col-xs-12 WholeBody" id="img_margin"><a class="content-box" href="../aihometrainer/3_starjump.do">
		              <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/starjump22.gif" alt="Main Demo"></div>
		           	  <h3 class="content-box-title font-serif">Star Jump</h3></a></div>
	              
	              <div class="col-md-4 col-sm-6 col-xs-12 WholeBody" id="img_margin"><a class="content-box" href="../aihometrainer/3_BasicPlank.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/basicPlank.jpg" alt="Main Demo"></div>
	               	  <h3 class="content-box-title font-serif">Basic Plank</h3></a></div>
	             	
	              <div class="col-md-4 col-sm-6 col-xs-12 arm" id="img_margin"><a class="content-box" href="../aihometrainer/3_shoulderPress.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/sholderPress22.gif" alt="Shop"></div>
	                  <h3 class="content-box-title font-serif">Shoulder Press</h3></a></div>

	              <div class="col-md-4 col-sm-6 col-xs-12 arm" id="img_margin"><a class="content-box" href="../aihometrainer/3_PushUp.do">
	                  <div class="content-box-image"><img id="sub_img_size"  src="../resources/aihometrainer/images/pushUpMain.gif" alt="Photography"></div>
	                  <h3 class="content-box-title font-serif">Push Up</h3></a></div>

	              <div class="col-md-4 col-sm-6 col-xs-12 back" id="img_margin"><a class="content-box" href="../aihometrainer/3_dumbbellLetpulldown.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/Rllsss.gif" alt="Finance"></div>
	                  <h3 class="content-box-title font-serif">Dumbbell Let Pull Down</h3></a></div>

	              <div class="col-md-4 col-sm-6 col-xs-12 leg" id="img_margin"><a class="content-box" href="../aihometrainer/3_Squat.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/3-squrt.jpg" alt="One Page"></div>
	                  <h3 class="content-box-title font-serif">Squat</h3></a></div>		

	              <div class="col-md-4 col-sm-6 col-xs-12 WholeBody" id="img_margin"><a class="content-box" href="../aihometrainer/3_tree.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/tree_yoga2.jpg" alt="One Page"></div>
	                  <h3 class="content-box-title font-serif">Tree Pose</h3></a></div>

	              <div class="col-md-4 col-sm-6 col-xs-12 WholeBody" id="img_margin"><a class="content-box" href="../aihometrainer/3_burpeeTest.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/buppeeTest.jpg" alt="Agency"></div>
	                  <h3 class="content-box-title font-serif">Burpee Test</h3></a></div>
		                  	                  
	              <div class="col-md-4 col-sm-6 col-xs-12 leg" id="img_margin"><a class="content-box" href="../aihometrainer/3_SideSquat.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/wideSqurtMain.gif" alt="One Page"></div>
	                  <h3 class="content-box-title font-serif">Wide Squat</h3></a></div>	

	              <div class="col-md-4 col-sm-6 col-xs-12 arm" id="img_margin"><a class="content-box" href="../aihometrainer/3_ButterFly.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/butterfly22.jpg" alt="Portfolio"></div>
	                  <h3 class="content-box-title font-serif">Butter Fly</h3></a></div>
	                  
	              <div class="col-md-4 col-sm-6 col-xs-12 leg" id="img_margin"><a class="content-box" href="../aihometrainer/3_chairPose.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/chairPose2.jpg" alt="Restaurant"></div>
	                  <h3 class="content-box-title font-serif">Chair Pose</h3></a></div>

	              <div class="col-md-4 col-sm-6 col-xs-12 arm" id="img_margin"><a class="content-box" href="../aihometrainer/3_SRR.do">
	                  <div class="content-box-image"><img id="sub_img_size" src="../resources/aihometrainer/images/SRR333.jpg" alt="One Page"></div>
	                  <h3 class="content-box-title font-serif">Side Lateral Raise</h3></a></div>
	

	          
	           </div>
            </div>
         </section> <!-- class="module-medium" -->        
	 </div><!-- class="main showcase-page" -->
	 
   </section> <!-- class="module pb-0" -->
   
	<!-- 7. 부위별 운동 운동 리스트 ######### 끝! ########### -->   
	
</div> 
<!-- ### 부위별 운동 파트 끝! ### -->           




<!-- ### 운동 종류 파트 시작 ### --> 
<div id="part2" class="part2 hide">


	<!-- 8. 메뉴 리스트 ######### 시작! ########### -->  
   
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
	                <ul class="filter font-alt" id="filters3">
		                  <li><a class="current2 wow fadeInUp" data-filter2="*">All</a></li>
		                
		                  <li><a class="wow fadeInUp"  data-filter3=".yusanso" data-wow-delay="0.4s">유산소</a></li>
		                
		                  <li><a class="wow fadeInUp" data-filter3=".grud" data-wow-delay="0.6s">근력운동</a></li>
		                 
		                  <li><a class="wow fadeInUp" data-filter3=".yoga" data-wow-delay="0.6s">요가</a></li>
	                </ul>
	              </div>
	           </div>

	<!-- 8. 메뉴 리스트 ######### 끝! ########### -->  
  
  
	<!-- 9. 운동 리스트 ######### 시작! ########### --> 
      
      <div class="main showcase-page">
      	 <section class="module-medium" id="demos">
            <div class="container">
              <div class="row multi-columns-row" id="demos3">
            
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
   
	<!-- 9. 운동 리스트 ######### 끝! ########### -->  

</div>	
<!-- ### 운동 종류 파트 끝 ### --> 



        
        
        
 <!-- 10. 풋터 ######### 시작! ########### -->           
      
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
 <!-- 10. 풋터 ######### 끝! ########### -->     	        
        
        
        
     </div><!-- class="main" -->
     
      <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
      
    </main>
    
        
    <!--  JavaScripts=============================================-->
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