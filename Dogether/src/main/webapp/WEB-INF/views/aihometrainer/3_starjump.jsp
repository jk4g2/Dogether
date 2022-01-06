<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<mata http-equiv="X-UA-Compatible" content="ie=edge">
		<title>AI Home Trainer : Star Jump</title>
	
	<!--  Favicons ============================================= -->
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
	<!-- Default stylesheets-->
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
    <link href="../resources/aihometrainer/css/main.css" rel="stylesheet">
    <link href="../resources/aihometrainer/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="../resources/aihometrainer/css/colors/default.css" rel="stylesheet">
    <link href="../resources/css/PhoneCSS.css" rel="stylesheet">	   
    <link href="../resources/aihometrainer/css/button.css" rel="stylesheet">
 


<script type="text/javascript">
	function openPop(){
	    var popup = window.open("popupCount.do", 'AI Home Tranier 사용법', 'width=1500px, height=2000px, scrollbars=yes');
	}
</script>
   
	<style>
		    
	div.module.test_module{ 
		padding-top: 10px; }
	
	div#t_title{
		font-weight : bold;
		font-size : 30px }   
	
	tr#t_title_tr{
		height: 80px;
		table-layout:fixed;
		width:100%; }
	
	div#test_test_t2_t2{
		margin-top : 50px; }  
		
	ul.filter.font-alt.test_filter{
		margin-top:40px;
		margin-bottom:30px; }    
	
	div#label-container{
		 width: 100px; }
	
	img#sub_slider_img{
		 width: 203.99px; 
		 height : 136.09px;}
		 
	.test_sub_simg {
	     width: 23%; }
	
	.middle_td{
		 padding-left : 10px;
		 padding-right: 10px;}
	
	#under_table{
		 padding-left : 10%;
		 padding-right: 10%;}
	
	#canvas{
	     padding-right: 80px;}
	
	#start_button{
		 padding-top:15px;
		 padding-bottom:30px;}
	
	.block {display:block;}
	.hide {display:none;}
	
	#motion_test{
   		 padding-top:112px; }
    
    img#imgSize{
    	 height : 136.09px;
    }
		    
	</style>
	 
	
	<script> 

	var count_get = 0; // // getCount함수에서 받아온 변수를 받기 위해 선언한 변수.
	
	var count = 0;
	
	// ## input에 입력한 값을 받아서 지역변수에서 전역변수로 만드는 과정
	function getCount(){
		
		var count_yet = document.getElementById("count_input").value;  // input에 입력된 값 받는 법.
		
			this.count_get = count_yet;
		
		var count_yet2 = document.getElementById("ViewCount").value;
			
			this.count = count_yet2;
			
			count = 0;
		
		var audio = new Audio(URL + 'sound/' +  'start.mp3');
			audio.play();
		
		$("#ViewCount3").text("시작하세요.");
		$("#ViewCount").text("");					
		};

</script>
    
</head>
  
  
 <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
      
    
      
 <!-- 1. 헤더 ############# 헤더 + 사이드바 시작!! ########## -->

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
	
	<!-- 헤더의 사이드바 시작! -->
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
	<!-- 헤더의 사이드바 끝! -->
 <!-- 1. 헤더 ############# 헤더 + 사이드바 끝!! ########## -->



 <!-- 2. 메인 ########## 티처블 화면 + 메인 시작버튼 등 화면구성요소 부분 시작! ############# -->

	<section id="motion_test">
		<div id="test_test_t3" class="t2t2"> <!-- 화면 정 중앙으로 만든 아이디값 : main.css 밑줄에 있음  -->
 
			<table>
				<tr  id="t_title_tr">
						<td id="middle_td_1" class="middle_td" rowspan="6"  style="width:1300px;" >
							<!-- 티처블 머신 화면 출력 부분 -->
							<canvas id="canvas"></canvas> 
						</td>
						
						<td>   <!-- 1 : 운동 종목 -->
							<div id="t_title">Star Jump&nbsp; &nbsp; &nbsp; &nbsp;<button id="q_button" type="button" style="height: 30px; width: 30px; font-size:15px;" target="_blank" onclick="openPop()">?</button>  <!--  도움말 버튼 부분 --></div>
								
							<div>팔벌려뛰기</div>
						</td>
			   	</tr>
						
				<tr> <!-- 2 : 스타트 버튼 + 카운트 갯수 인풋 받는 곳 -->
					<td  style="height: 230px;">
						<div id="start_button"> <!-- 입력 및 시작버튼 -->
					        <button class="w-btn-neon2" type="button" style="height: 100px; width: 200px; font-size:45px;"
							onClick="getCount();">Start</button> 
						</div>
						<div>> <!-- 카운트 인풋받는 박스 -->
							<label> 목표 갯수 : </label>
							<input id="count_input" type="text" name="inputNm" value="30" style="height: 50px; width: 100px; font-size:30px;"/>
						</div>
					</td>
				</tr>
						
				<tr><!-- 3: 보류 -->
					<td style="height: 20px;">
						<!-- <div >Count</div> -->
					</td>
				</tr>
						
				<tr><!-- 4 : 카운트가 출력되는 곳-->
					<td style="height: 200px;">
						<div id="ViewCount" style="font-size:100px;"></div> <!-- 카운트가 출력되는 부분 -->
						<div id="ViewCount3" style="font-size:50px;"></div> <!-- '5초 뒤에 시작됩니다', '종료됩니다'가 뜨는 부분 -->
					</td>
				</tr>
						
				<tr><!-- 5 : 정확도에 관련된 메세지가 출력되는 부분.-->
					<td style="height: 180px;">
						<div id="ViewCount_right" style="font-size:50px; color:blue;"></div>  <!-- '올바른 자세입니다'가 출력 부분. -->
							<!-- <img src="#"/>  -->
						<div id="ViewCount_wrong" style="font-size:40px; color:red; "></div>  <!-- '자세에 좀 더 집중해주세요'가 출력 부분. -->
					</td>
				</tr>					
						
				<tr><!-- 6 : 정확도(라벨컨테이너)가 출력되는 부분 -->
					<td>
						<div id="label-container"></div>
					</td>
				</tr>		
			</table>
		</div>	
<!-- 2. 메인 ########## 티처블 화면 + 메인 시작버튼 등 화면구성요소 부분 끝! ############# -->		
	
						
		<!-- ########## 티처블 머신 코드 시작! ############# -->						
					<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
					<script src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js"></script>
					<script type="text/javascript">
					    // More API functions here:
					    // https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/pose
					
					   // Teachable Machine 내보내기 패널에서 제공하는 모델에 대한 링크
					    const URL = "../resources/aihometrainer/exercise_model/";   // #### 1. 음성이나 기타 관련 자료 넣는 폴더, 폴더 만들고 맞춰야 함 ###
					    let model, webcam, ctx, labelContainer, maxPredictions;
					
					    async function init() {  // ### 2. init 이라는 함수는 model을 불러오고(31-32), 카메라를 설정해준 다음에(35-40), (40)loop라는 함수를 계속 돌게 된다.
					        const modelURL = URL + "model_starjump.json";
					        const metadataURL = URL + "metadata_starjump.json";
					
								     // 모델 및 메타데이터 로드
								        // 파일 선택기에서 파일을 지원하려면 API의 tmImage.loadFromFiles()를 참조하십시오.
								        // 참고: 포즈 라이브러리는 창에 tmPose 객체를 추가합니다(window.tmPose).
								        model = await tmPose.load(modelURL, metadataURL);
								        maxPredictions = model.getTotalClasses();
								
								     // 웹캠 설정을 위한 편의 기능
								     	const height = 850;
								       	const width = 1200;
								        const flip = true; // 웹캠을 뒤집을지 여부
								       	webcam = new tmPose.Webcam(width, height, flip); // 너비, 높이, 뒤집기
								        await webcam.setup(); // 웹캠에 대한 액세스 요청
								        await webcam.play();
								        window.requestAnimationFrame(loop);	// loop 라는 함수가 계속 돌게 된다   //애니메이션을 위해 만들어진 특이한 "비동기" 함수
								
								     // DOM에 요소 추가/가져오기
								        const canvas = document.getElementById("canvas");
								        canvas.width = width; canvas.height = height; // 및 클래스 레이블
								        ctx = canvas.getContext("2d");
								       // 출력 - 라벨 컨테이너 부분
								        labelContainer = document.getElementById("label-container");		// 라벨 컨테이너의 출력부분
								        for (let i = 0; i < maxPredictions; i++) { // and class labels
								            labelContainer.appendChild(document.createElement("div"));		// 나온 값들을 각각 div로 감싸서 출력해줌
								        }
							 }
					
					    
					    async function loop(timestamp) { // loop라는 함수는 계속 자기 자신을 호출하면서 반복되는데, 웹캠을 업데이트 하고, predict() 라는 함수를 수행한다.
					        webcam.update();  // 웹캠 프레임 업데이트
					        await predict();    //동작인식을 시작
					        window.requestAnimationFrame(loop);  //애니메이션을 위해 만들어진 특이한 "비동기" 함수
					    }
					    
					    //  ######  
					    //  var status = "class1";
					    var count = 0;    					  
					    //   ####### 
					    			
					    async function predict() {	// ### 3. predict() 함수는 await model.estimatePose 이 모델을 불러오고, model.predict 로 결과를 뽑아서
					    	// 예측 #1: 포즈넷을 통한 입력 실행
					        // EstimatePose는 이미지, 비디오 또는 캔버스 html 요소를 가져올 수 있습니다.
					        const {pose, posenetOutput} = await model.estimatePose(webcam.canvas);
					     // 예측 2: 티칭 가능한 기계 분류 모델을 통한 입력 실행
					        const prediction = await model.predict(posenetOutput);
					
		        
								// ##############				        
					        
								 if(prediction[1].probability.toFixed(2) >= 0.40){
										 
							        	if(prediction[2].probability.toFixed(2) >= 0.40){
							        		
							        		 count = count+1;
							        		 ViewCount.innerHTML = count;
											
							     				$("#ViewCount3").text("");
							        		 
							     				var audio = new Audio(URL + 'sound/' + count%10 + '.mp3');
							     				var audio_ten = new Audio(URL + 'sound/' + parseInt(count/10) + count%10 + '.mp3');
						        
								     				if(parseInt(count)<10){
	
										        		audio.play();
								     				}
										        	else{
										        		audio_ten.play();	
										        	}	
								     				
								        		 if(parseInt(count)==parseInt(count_get)){   // 목표숫자가 '  ' 이면  //  inputbox로 바꿈
								        
								        			count = 0;   // 카운트 초기화 되고,
								        			 
								        			var audio = new Audio(URL + 'sound/' +  'success2.mp3');  
										        	audio.play();				// success2.mp3 음성이 나옴. (목표한 갯수를 완료하였습니다 라는 음성이 나옴)
													$("#ViewCount").text("");
													$("#ViewCount3").text("목표한 갯수를 성공하셨습니다.");									        	
								        		 };							        		 
							        	 }	 						        	
							      }
							   	        
								
								// ##############
									     
								        for (let i = 0; i < maxPredictions; i++) {	// ### 4. model.predict 로 결과를 뽑아서 prediction[i].className : prediction[i].probability 을 문장으로 만들어서
								            const classPrediction =
								                prediction[i].className + ": " + prediction[i].probability.toFixed(2); // 라벨 컨테이너의 클래스 네임 지정 부분!(수치화하는 젤 풋터 부분)
								            labelContainer.childNodes[i].innerHTML = classPrediction; // ##HTML에 넣어주는 역할을 하고 있다.  // 라벨컨테이너의 출력 부분
								            // classPrediction 의 값을 childNodes에 넣어주는 것
								        
								        }
								
								        // ## 5. => 캠화면 하단에 있는 자세마다의 정확도임.
								        // ## 6. prediction[i].probability 가능성. 정확도와 관련있음
										// ## 7. prediction[i].probability가 무엇일 때 어떤 소리를 내라. 를 설정하면 됨.
										// ## 8. prediction[0] = 1  /  prediction[1]
								        
								        
								        // 마지막으로 포즈를 그립니다.
								        drawPose(pose);
					 				   }
					
					    function drawPose(pose) {
					    	
					        if (webcam.canvas) {
					            ctx.drawImage(webcam.canvas, 0, 0);
					            // 키포인트와 스켈레톤을 그립니다.
					            if (pose) {
					                const minPartConfidence = 0.5;
					                tmPose.drawKeypoints(pose.keypoints, minPartConfidence, ctx);
					                tmPose.drawSkeleton(pose.keypoints, minPartConfidence, ctx);
					            }
					        }
					    }
				 </script>
			
				 <script> init();  </script>
		
			</section>
		<!-- ########## 티처블 머신 코드 끝! ############# -->		

<!-- 3. 운동법 ########## Exercise Method 시작! ############# -->	
	<div id="test_test_t2_t2">
		<div id="test_test_t2" class="t2t2">   <!-- 화면 정 중앙으로 만든 아이디값 : main.css 밑줄에 있음  -->

			 <h4 class="font-alt mb-0"></h4> 
               
                <div class="panel-group" id="accordion">  <!-- ## 드롭박스 시작!! -->
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title font-alt"><a data-toggle="collapse" aria-expanded="false" class="collapsed" data-parent="#accordion" href="#support1"  >Exercise Method</a></h4>
                    </div>
                    
                    <div class="panel-collapse collapse in" id="support1">
                       <div class="panel-body">
                    
                    	   <a href="https://youtu.be/nJeDU7qQIP4"><img src="../resources/aihometrainer/images/starjump.gif"  style="width:100%" id="img_exs1"/></a>
                      
                       </div>
                   </div>
                </div>   
           	</div>   <!-- ## 드롭박스 끝! -->
        	    
		 <hr class="divider-w mt-10 mb-20">  <!-- 선 라인 -->
       	    
       	 </div>	   
      </div> 
<!-- 3. 운동법 ########## Exercise Method 끝! ############# -->	      	    
 
 
    
<!-- 4. 하단 메뉴 ############# 하단 메뉴 리스트 시작! ########## -->

		<div class="container width_size" id="works" style="width: 1200px;">
			<div class="row">
				<div class="col-sm-12">
					<ul class="filter font-alt test_filter">

						<li class="list_menu"><a class="menu_all">All</a></li>	
						<li>||</li>
						<li class="list_menu"><a class="menu_yusanso">유산소</a></li>
						<li class="list_menu"><a class="menu_grud">근력운동</a></li>
						<li class="list_menu"><a class="menu_yoga">요가</a></li>
						<li>||</li>

						<li class="list_menu"><a class="menu_back">back</a></li>

						<li class="list_menu"><a class="menu_belly">ABS</a></li>

						<li class="list_menu"><a class="menu_arm">arm & shoulder</a></li>

						<li class="list_menu"><a class="menu_leg">leg & hip</a></li>

						<li class="list_menu"><a class="menu_Core">whole body & core</a></li>

					</ul>
				</div>
			</div>
		</div>
   
 <!-- 4. 하단 메뉴  ############# 하단 메뉴 리스트 끝!! ########## --> 
    
    
   
 <!-- 5. 하단  ############# 하단 메뉴 요소 시작!! ########## -->     
             

	     <!-- ## 메뉴 : ALL 시작! -->              
	       <div class="testtest">     
	       <div class="menu_all"> <!-- 메뉴 => ALL -->
	        <div class="module test_module module_2" id="last_menulist">
	          <div class="container">
	  
	            <div class="row" id="demos3">
	  
	                <div class="owl-carousel text-center" data-items="5" data-pagination="false" data-navigation="false">
	
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product "><a href="../aihometrainer/3_starjump.do"><img src="../resources/aihometrainer/images/3-starjump.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">star jump</a></h4>
	                    </div>
	                  </div>
	                </div>
	                   
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_BasicPlank.do"><img src="../resources/aihometrainer/images/3-keep.jpg" alt="Derby shoes" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Basic plank</a></h4>
	                    </div>
	                  </div>
	                </div>  
	        
	                
	                <div class="owl-item">
	                  <div class="col-sm-12"> 
	                    <div class="ex-product"><a href="../aihometrainer/3_burpeeTest.do"><img src="../resources/aihometrainer/images/burpeetest.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">burpee test</a></h4>
	                    </div>
	                  </div>
	                </div>


	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_Squat.do"><img src="../resources/aihometrainer/images/3-squrt.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">squat</a></h4>
	                    </div>
	                  </div>
	                </div>	  

	                              
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_ButterFly.do"><img src="../resources/aihometrainer/images/butterfly.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">butterfly</a></h4>
	                    </div>
	                  </div>
	                </div>
	               
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_chairPose.do"><img src="../resources/aihometrainer/images/chairPose.jpg" alt="Chelsea boots" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Chair pose</a></h4>
	                    </div>
	                  </div>
	                </div>
	                
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_dumbbellLetpulldown.do"><img src="../resources/aihometrainer/images/dumbbelllfd.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Dumbbell Let Pull Down</a></h4>
	                    </div>
	                  </div>
	                </div>
	                
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_PushUp.do"><img src="../resources/aihometrainer/images/3-pushup.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Push Up</a></h4>
	                    </div>
	                  </div>
	                </div>
	                
	               <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_shoulderPress.do"><img src="../resources/aihometrainer/images/shoulderpress.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Shoulder Press</a></h4>
	                    </div>
	                  </div>
	                </div>
	                
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_SideSquat.do"><img src="../resources/aihometrainer/images/wideSqurt.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Wide squat</a></h4>
	                    </div>
	                  </div>
	                </div>	                
	                
              
	                
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_SRR.do"><img src="../resources/aihometrainer/images/3-armdum.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Side Lateral Raise</a></h4>
	                    </div>
	                  </div>
	                </div>	                

	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_tree.do"><img src="../resources/aihometrainer/images/tree_yoga.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Tree Pose</a></h4>
	                    </div>
	                  </div>
	                </div>
	                
	                
	              </div>
	            </div>
	          </div>
	        </div>
	       </div>
	      </div>
	      <!-- ## 메뉴 : ALL 끝! -->  
	
	   
	      <!-- ## 메뉴 : 유산소 시작! -->  
		  <div class="testtest">  
		  <div class="menu_yusanso">
			<div class="module test_module module_2" id="last_menulist">
				<div class="container">
	
					<div class="row" id="demos2">
	
						<div class="owl-item ">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_burpeeTest.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/burpeetest.jpg"
										alt="Leather belt" /></a>
									<h4 class="shop-item-title font-alt">
										Burpee Test</a>
									</h4>
								</div>
							</div>
						</div>
	
						<div class="owl-item belly_2">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_starjump.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/3-starjump.jpg"
										alt="Derby shoes" /></a>
									<h4 class="shop-item-title font-alt">
										Star Jump</a>
									</h4>
								</div>
							</div>
						</div>
	
					</div>
				</div>
			</div>
		  </div>
		 </div>
		 <!-- ## 메뉴 : 유산소 끝! -->  
	
	
	
	      <!-- ## 메뉴 : 근력운동 시작! -->  
	
	       <div class="testtest">     
	       <div class="menu_grud">
	        <div class="module test_module module_2" id="last_menulist">
	          <div class="container">
	  
	            <div class="row" id="demos3">
	  
	                <div class="owl-carousel text-center" data-items="5" data-pagination="false" data-navigation="false">
	
	                   
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_BasicPlank.do"><img src="../resources/aihometrainer/images/3-keep.jpg" alt="Derby shoes" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Basic plank</a></h4>
	                    </div>
	                  </div>
	                </div>  

	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_Squat.do"><img src="../resources/aihometrainer/images/3-squrt.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">squat</a></h4>
	                    </div>
	                  </div>
	                </div>	  
	                              
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_ButterFly.do"><img src="../resources/aihometrainer/images/butterfly.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">butterfly</a></h4>
	                    </div>
	                  </div>
	                </div>
	               
	               <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_dumbbellLetpulldown.do"><img src="../resources/aihometrainer/images/dumbbelllfd.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Dumbbell Let Pull Down</a></h4>
	                    </div>
	                  </div>
	                </div>
	                
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_PushUp.do"><img src="../resources/aihometrainer/images/3-pushup.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Push Up</a></h4>
	                    </div>
	                  </div>
	                </div>
	                
	               <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href=../aihometrainer/3_shoulderPress.do"><img src="../resources/aihometrainer/images/shoulderpress.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Shoulder Press</a></h4>
	                    </div>
	                  </div>
	                </div>
	                
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_SideSquat.do"><img src="../resources/aihometrainer/images/wideSqurt.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Wide squat</a></h4>
	                    </div>
	                  </div>
	                </div>	                
	                
              
	                
	                <div class="owl-item">
	                  <div class="col-sm-12">
	                    <div class="ex-product"><a href="../aihometrainer/3_SRR.do"><img src="../resources/aihometrainer/images/3-armdum.jpg" alt="Leather belt" id="imgSize"/></a>
	                      <h4 class="shop-item-title font-alt">Side Lateral Raise</a></h4>
	                    </div>
	                  </div>
	                </div>	                

	              </div>
	            </div>
	          </div>
	        </div>
	       </div>
	      </div>	
	
		 <!-- ## 메뉴 : 근력운동 끝! -->  
	
	
	      <!-- ## 메뉴 : 요가 시작! -->  
		  <div class="testtest">  
		  <div class="menu_yoga">
			<div class="module test_module module_2" id="last_menulist">
				<div class="container">
	
					<div class="row" id="demos2">
	
						<div class="owl-item ">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_tree.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/tree_yoga.jpg"
										alt="Leather belt" /></a>
									<h4 class="shop-item-title font-alt">
										Tree Pose</a>
									</h4>
								</div>
							</div>
						</div>
	
						<div class="owl-item belly_2">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_chairPose.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/chairPose.jpg"
										alt="Derby shoes" /></a>
									<h4 class="shop-item-title font-alt">
										Chair pose</a>
									</h4>
								</div>
							</div>
						</div>
	
					</div>
				</div>
			</div>
		  </div>
		 </div>
		 <!-- ## 메뉴 : 요가 끝! --> 
	
	      <!-- ## 메뉴 : back(등) 시작! -->  
		  <div class="testtest">  
		  <div class="menu_back">
			<div class="module test_module module_2" id="last_menulist">
				<div class="container">
	
					<div class="row" id="demos2">
	
						<div class="owl-item ">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_dumbbellLetpulldown.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/dumbbelllfd.jpg"
										alt="Derby shoes" /></a>
									<h4 class="shop-item-title font-alt">
										Dumbbell Let Pull Down</a>
									</h4>
								</div>
							</div>
						</div>
	
					</div>
				</div>
			</div>
		  </div>
		 </div>
		 <!-- ## 메뉴 : back(등) 끝! -->  
	
		 <!-- ## 메뉴 : belly(복근) 시작! -->  
		  <div class="testtest">  
		  <div class="menu_belly">
			<div class="module test_module module_2" id="last_menulist">
				<div class="container">
	
					<div class="row" id="demos2">
	
					</div>
				</div>
			</div>
		  </div>
		 </div>
		 <!-- ## 메뉴 : belly(복근) 끝! -->  


		 <!-- ## 메뉴 : arm(팔) 시작! -->  
		  <div class="testtest">  
		  <div class="menu_arm">
			<div class="module test_module module_2" id="last_menulist">
				<div class="container">
	
					<div class="row" id="demos2">
	
						<div class="owl-item belly_2">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_ButterFly.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/butterfly.jpg"
										alt="Derby shoes" /></a>
									<h4 class="shop-item-title font-alt">
										butterfly</a>
									</h4>
								</div>
							</div>
						</div>
	
						<div class="owl-item belly_2">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_PushUp.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/3-pushup.jpg"
										alt="Derby shoes" /></a>
									<h4 class="shop-item-title font-alt">
										Push Up</a>
									</h4>
								</div>
							</div>
						</div>
	
						<div class="owl-item belly_2">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_shoulderPress.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/shoulderpress.jpg"
										alt="Derby shoes" /></a>
									<h4 class="shop-item-title font-alt">
										Shoulder Press</a>
									</h4>
								</div>
							</div>
						</div>
						
						<div class="owl-item ">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_SRR.do"	><img id="sub_slider_img"
										src="../resources/aihometrainer/images/3-armdum.jpg"
										alt="Leather belt" /></a>
									<h4 class="shop-item-title font-alt">
										Side Lateral Raise</a>
									</h4>
								</div>
							</div>
						</div>
						
						
					</div>
				</div>
			</div>
		  </div>
		 </div>
		 <!-- ## 메뉴 : arm(팔) 끝! -->  

		 <!-- ## 메뉴 : leg&hip(하체) 시작! -->  
		  <div class="testtest">  
		  <div class="menu_leg">
			<div class="module test_module module_2" id="last_menulist">
				<div class="container">
	
					<div class="row" id="demos2">
	
						<div class="owl-item belly_2">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_Squat.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/3-squrt.jpg"
										alt="Derby shoes" /></a>
									<h4 class="shop-item-title font-alt">
										Squat</a>
									</h4>
								</div>
							</div>
						</div>
						
						<div class="owl-item ">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_SideSquat.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/wideSqurt.jpg"
										alt="Leather belt" /></a>
									<h4 class="shop-item-title font-alt">
										Wide squat</a>
									</h4>
								</div>
							</div>
						</div>
	
						<div class="owl-item belly_2">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_chairPose.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/chairPose.jpg"
										alt="Derby shoes" /></a>
									<h4 class="shop-item-title font-alt">
										Chair pose</a>
									</h4>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		  </div>
		 </div>
		 <!-- ## 메뉴 : leg&hip(하체) 끝! -->  

		 <!-- ## 메뉴 : Whole Body & Core(전신, 코어) 시작! -->  
		  <div class="testtest">  
		  <div class="menu_Core">
			<div class="module test_module module_2" id="last_menulist">
				<div class="container">
	
					<div class="row" id="demos2">
	
						<div class="owl-item ">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_burpeeTest.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/burpeetest.jpg"
										alt="Leather belt" /></a>
									<h4 class="shop-item-title font-alt">
										Burpee Test</a>
									</h4>
								</div>
							</div>
						</div>
	
						<div class="owl-item belly_2">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_starjump.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/3-starjump.jpg"
										alt="Derby shoes" /></a>
									<h4 class="shop-item-title font-alt">
										Star Jump</a>
									</h4>
								</div>
							</div>
						</div>

						<div class="owl-item ">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_BasicPlank.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/3-keep.jpg"
										alt="Leather belt" /></a>
									<h4 class="shop-item-title font-alt">
										Basic plank</a>
									</h4>
								</div>
							</div>
						</div>
						
						<div class="owl-item ">
							<div class="col-sm-12 test_sub_simg">
								<div class="ex-product">
									<a href="../aihometrainer/3_tree.do"><img id="sub_slider_img"
										src="../resources/aihometrainer/images/tree_yoga.jpg"
										alt="Leather belt" /></a>
									<h4 class="shop-item-title font-alt">
										Tree Pose</a>
									</h4>
								</div>
							</div>
						</div>						

					</div>
				</div>
			 </div>
		   </div>
		 </div>
		 <!-- ## 메뉴 : Whole Body & Core(전신, 코어) 끝! -->  
 <!-- 5. 하단  ############# 하단 메뉴 요소 끝!! ########## -->    





 <!-- 6. 풋터  ############# 풋터 시작!! ########## -->
      <section class="module-extra-small bg-dark">
        <div class="container">
          <div class="row">
            <div class="col-sm-6 col-md-8 col-lg-9">
              <div class="callout-text font-alt">
                <br>
                <p style="margin-bottom: 0px;"> Copyright © 2018 Company Name | Designed by TemplateMo</p>
              </div>
            </div>
          </div>
        </div>
      </section>
 <!-- 6. 풋터  ############# 풋터 끝!! ########## -->  
  
  
  
 
     <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
    </main>
    <!--  JavaScripts =============================================  -->
    <script src="../resources/aihometrainer/lib/jquery/dist/jquery.js"></script> 
  	<script src="../resources/aihometrainer/lib/bootstrap/dist/js/bootstrap.min.js"></script>
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