<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<!--  공통부분 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/templatemo-style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/PhoneCSS.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/runninggoo/runninggooMain.css">
<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.6.0.js" type="text/javascript"></script>
<title>런닝구</title>
</head>
<style>
* {
	font-family: 'Jua', sans-serif;
}
.rngButtons{
	display:flex;
	align-items:center;
	justify-content:space-between;
}
.btn{
  background:#797979;
  color:#fff;
  border:none;
  position:relative;
  width:80px;
  height:45px;
  text-align:center;
  font-size:20px;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
.btn>p{
	margin:0;
}
.btn:first-child{
}
.btn:hover{
  background:#fff;
  color:#797979;
}
.btn:before,.btn:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #797979;
  transition:400ms ease all;
}
.btn:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
.btn:hover:before,.btn:hover:after{
  width:100%;
  transition:800ms ease all;
}
.overlay-menu ul li a{
  font-size : 25px;
}
/* ###### 모바일에서 내브바 꽉차게################# */
@charset "UTF-8";
@media only screen and (max-width: 992px) {
	.overlay-menu {
		background: rgba(0, 0, 0, 0.95);
		color: #ffffff;
		position: fixed;
		z-index: 100;
		right: 0;
		top: 0;
		height: 100%;
		width: 100%;
		text-align: center;
		transition: all 0.5s;
	}
}
</style>
<body>
	<div>
	<!-- header -->
	<nav>
	   <div class="logo">
	       <a href="../index.do">DO<em>GETHER</em></a>
	   </div>
	    <div class="menu-icon">
	       <span></span>
	    </div>
	</nav>
 	<section class="overlay-menu">
      <div class="container" style="background:black;">
        <div class="row">
          <div class="main-menu">
              <ul>
                  <li><a href="../runninggoo/">런닝구</a></li>
                  <li><a href="../aihometrainer/">AI홈트레이너</a></li>
                  <li><a href="../boast/">자랑하기</a></li>
                  <li><a href="../shoppingMall/">쇼핑몰</a></li>
                  <li><a href="../healthcenter/">Inbody 측정 보건소</a></li>
                  <li><a href="../sleep/">수면시간계산기</a></li>
                  <c:if test="${sessionScope.username eq 'Admin' }">
                 	 <li><a href="../admin/">마이페이지</a></li>  
                  </c:if>
                  <c:if test="${sessionScope.username ne 'Admin' }">
                  	<li><a href="../mypage/">마이페이지</a></li>
                  </c:if>
              </ul>
          </div>
        </div>
      </div>
    </section>
	
	<h1 class="currentSessionMyID">${sessionScope.username }</h1>
	<!-- 현재 로그인 한 사람의 보유포인트 -->
	<span id="nowMemberPoint" style="display:none">${ nowMemberPoint }</span>
	
	<!-- DB에서 forEach 돌며 값 불러오기 -->
	<div class="col-12 rn_room_list_wrap">
		<c:forEach items="${hostProfile }" var="runninggoo">
			<div class="col-12 runninggoo_card_wrap">
				<div class="col-12 runninggoo_card_inner mb30 box">
					<h1 class="0"></h1>
					<div class="isMatched"></div>
					<div class="col-12 rn_card_user_profile">
						<div class="rngRoomNum" style="display:none">${runninggoo.RoomNumber }</div>
						<div class="col-0 rn_profile_picture">
							<img src="${pageContext.request.contextPath}/resources/img/imguploadmember/${runninggoo.Member_realfname}" >
						</div>
						<div class="col-0 rn_profile_nickname">${runninggoo.MemberID}</div>
						<div class="col-0 rn_profile_eval">참여인원</div>
						<div class="col-0 rn_profile_memberCount">
							<span class="currentMembers">${runninggoo.CurrentMembers }</span>
							 / 
							 <span class="maxMembers" >${runninggoo.MaxMembers }</span>
						</div>
					</div>
					<div class="col-12 kakao_map">
					</div>
					<div class="col-12 rn_card_check_box">
						<div class="col-4 rn_card_sports_event_choice">
							<div>
								<p class="rn_room_hashtag">#만나는 날짜/시간</p>
								<div id="showMeetingTime">${runninggoo.meetingTime }</div>
							</div>
							<p class="rn_room_hashtag">#스포츠 종목</p>
							<c:set var="SportsType" value="${runninggoo.SportsType}"/>
							<c:choose>
								<c:when test="${SportsType == 0}">
									<input type="checkbox" checked disabled>런닝
								</c:when>
								
								<c:when test="${SportsType == 1}">
									<input type="checkbox" checked disabled>발야구
								</c:when>
								
								<c:when test="${SportsType == 2}">
									<input type="checkbox" checked disabled>피구
								</c:when>
								
								<c:when test="${SportsType == 3}">
									<input type="checkbox" checked disabled>테니스
								</c:when>
								
								<c:when test="${SportsType == 4}">
									<input type="checkbox" checked disabled>배드민턴
								</c:when>
								
								<c:when test="${SportsType == 5}">
									<input type="checkbox" checked disabled>프리스비
								</c:when>
							</c:choose>
							<c:choose>
								<c:when test="${SportsType == 0 }">
									<p class="rn_room_hashtag">#런닝 뛸 거리</p>
									<div class="runningDTC">${runninggoo.RunningDistance }Km</div>
								</c:when>
								<c:otherwise>
									<p class="rn_room_hashtag">#운동시간</p>
									<div class="exerciseTime">${runninggoo.SportsTime }시간</div>
								</c:otherwise>
							</c:choose>
							
						</div>
						<div class="col-4 rn_card_sports_location_choice">
							<p class="rn_room_hashtag">#장소</p>
							<div id="rngLocation">${ runninggoo.Location}</div>
						</div>
						<div class="col-4 rn_card_sports_age_choice">
							<p class="rn_room_hashtag">#선호연령대</p>
							<c:set var="AgeGeneration" value="${runninggoo.AgeGeneration}"/>
							<c:choose>
								<c:when test="${AgeGeneration == 20}">
									<input type="checkbox" checked disabled>20대
								</c:when>
								
								<c:when test="${AgeGeneration == 30}">
									<input type="checkbox" checked disabled>20대 ~ 30대
								</c:when>
								
								<c:when test="${AgeGeneration == 40}">
									<input type="checkbox" checked disabled>20대 ~ 40대
								</c:when>
								
								<c:when test="${AgeGeneration == 50}">
									<input type="checkbox" checked disabled>20대 ~ 50대
								</c:when>
							</c:choose>
						</div>
					</div>
					<div class="col-12 rn_card_host_comment_box">
						<div class="balloon">
							<p class="rn_room_hashtag">#호스트 코멘트</p>
							<div class="col-12 rn_card_host_comment">${runninggoo.HostComment }</div>
						</div>
					</div>
					<div class="rngButtons">
					<c:choose>
						<c:when test="${ sessionScope.username == runninggoo.MemberID }">
							<div class="col-12 doJoinBtn btn hostBtn">
								<p>신청현황</p>
							</div>
							<div class="col-12 deleteBtn btn delBtn">
								<p>삭제</p>
							</div>
						</c:when>
						<c:otherwise>
							<div class="col-12 doJoinBtn btn userBtn">
								<p>참가</p>
							</div>
						</c:otherwise>
					</c:choose>
					</div>
				<div class="wido" style="display: none">${runninggoo.LocationLat}</div>
				<div class="gyeongdo" style="display: none">${runninggoo.LocationLong}</div>
				</div>
			</div>
		</c:forEach>
		<c:if test="${sessionScope.username ne 'Admin'}">
			<div class="col-12 rn_plus_btn">
				<a href="createRngRoom.do" class="rn_plus_btn_link"> <img
					src="${pageContext.request.contextPath}/resources/img/runninggooimage/rng_plus_btn.png">
				</a>
			</div>
		</c:if>
		<c:if test="${sessionScope.username eq 'Admin'}">
			<div class="col-12 rn_plus_btn" style="display:none">
				<a href="createRngRoom.do" class="rn_plus_btn_link"> <img
					src="${pageContext.request.contextPath}/resources/img/runninggooimage/rng_plus_btn.png">
				</a>
			</div>
		</c:if>
		
		<div class="col-12 rn_top_btn">
			<a href="#" id="top">▲ 맨 위로</a>
		</div>
	</div>
	

	<!--  footer -->
	<footer id="footer">
		<div class="container-fluid">
			<div class="col-md-12">
				<p id="ff">Copyright &copy; 2018 Company Name | Designed by
					TemplateMo</p>
			</div>
		</div>
	</footer>
	
	<div class="rngForEachLength" style="display:none">${rnRoomCNT }</div>
	</div>

	<!-- <script type="text/javascript"src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b002992ff5db3facd06fff2ffcf08711"></script> -->
	<script type="text/javascript"src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5cb2aec4a9d3e6a82c4abf60ad9d183d"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/runninggoo/kakaoMap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/runninggoo/RunningGoo.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/runninggoo/plugins.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/runninggoo/main.js"></script>
</body>
</html>