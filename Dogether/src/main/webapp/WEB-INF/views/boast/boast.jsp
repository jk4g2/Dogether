<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="../resources/css/templatemo-style.css">
<link rel="stylesheet" href="../resources/css/boast/boast.css">
<link rel="stylesheet" href="../resources/css/boast/boast2.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../resources/css/PhoneCSS.css">

<script src="../resources/js/boast/boast.js"></script>
<script src="../resources/js/plugins.js"></script>
<script src="../resources/js/main.js"></script>

<title>자랑하기 페이지 입니다.</title>
<style>
	.overlay-menu ul li a{
  font-size : 25px;
}
</style>

</head>
<body>
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

	<div id="ontheside">
		<div class="mainContainer">
			<div class="plusdiv">
				<!-- 세션이 Admin이 아닐 때만 글 등록(+) 생성됨  -->
				<c:if test="${sessionScope.username ne 'Admin'}">
					<img src="../resources/img/imgforboard/plus_icon.png"
						alt="plus.png" class="plusButton" style="cursor: pointer;">
				</c:if>

				<div class="postdiv">
					<div style="margin-left: 5px;">
						<a href="?sortType=0" class="myButton1">최신순</a> <a
							href="?sortType=1" class="myButton1">인기순</a>
					</div>
					<div></div>
				</div>
			</div>
			<c:set var="count" value="0" />
			<c:if test="${empty boardListProf}">
				<div style="color: red;">
					<h3>&nbsp ${memberID} 님의 게시물이 존재하지 않습니다.</h3>
				</div>
			</c:if>

			<c:if test="${not empty boardListProf and memberID != null}">
				<div style="text-align: right;">
					<h3 style="margin-bottom: 3px;">${memberID}님의 게시물</h3>
				</div>
			</c:if>

			<c:forEach var="item" items="${boardListProf}">
				<c:set var="count" value="${count + 1}" />
				<input type="hidden" value="${item.BoardID }">

				<!-- 게시글 div -->
				<div class="card">
					<div id="userdiv">
						<div style="cursor: pointer; display: inline-block;" id="clickID">
							<img src="../resources/img/imguploadmember/${item.Member_realfname}"
								id="userpic"> ${item['MemberID']}
						</div>

						<!-- 세션스코프 username과 item.memberID 가 같으면 게시글 수정 및 삭제 기능 추가 -->
						<!-- ************************************************** -->
						<c:if test="${sessionScope.username eq item['MemberID']}">
							<div style="display: inline-block; float: right;">
								<div style="display: none;">${item['BoardID']}</div>
								<img src="../resources/img/imgforboard/edit_image.png"
									class="imageforedit"> <img
									src="../resources/img/imgforboard/remove_image.png"
									class="imagefordelete">
							</div>
						</c:if>
						
						<c:if test="${sessionScope.username eq 'Admin'}">
							<div style="display: inline-block; float: right;">
								<div style="display: none;">${item['BoardID']}</div>
								<img src="../resources/img/imgforboard/edit_image.png" class="imageforedit" style="display:none">
								<img src="../resources/img/imgforboard/remove_image.png" class="imagefordelete">
							</div>
						</c:if>
						
					</div>
					<div id="content">
						<div id="pic"
							style='background-image: url(../resources/img/imguploadboast/${item.Board_realfname})'></div>
					</div>

					<!-- 사진 밑으로 좋아요 버튼 및 댓글내용 댓글 -->
					<div id="cardContent">

						<c:set var="found" value="0" />
						<c:forEach var="like" items="${like_list}">
							<c:if test="${like.boardID eq item['BoardID']}">
								<c:set var="found" value="1" />
								<div id='ajaxlikebutton'>
									<button class="likeButton" value="Y">좋아요♥ 취소</button>
								</div>
							</c:if>
						</c:forEach>

						<c:if test="${found eq 0 }">
							<div id='ajaxlikebutton'>
								<button class="likeButton" value="N">좋아요♡</button>
							</div>
						</c:if>

						<p id="usernameforcontent">${item['MemberID']}</p>
						<p id="boardContent" style="word-break: break-all;">${item.BoardContent}</p>
						<div id="likeCount">좋아요 ${item.Board_like_count} 개</div>

						<!-- 댓글 불러오는 부분 -->
						<c:set var="count" value="0" />
						<c:forEach var="reply" items="${reply_list}">
							<!-- reply for문시작 -->
							<c:if test="${reply.boardID eq item.BoardID }">

								<!-- count가 2보다 작을떄는 모든 게시물 다 싹뜨게함 -->
								<c:if test="${count lt 2}">
									<div class="comments">
										<ul id="forid">
											<li id="commentwriter" class="reply" style="cursor: pointer">${reply.replyer}</li>
											<li class="reply">${reply.reply }</li>
											<!-- 세션의 아이디와 게시자의 이름이 같으면 댓글수정 부분과 댓글삭제 버튼 추가 -->
											<!-- ****************************************** -->
											<c:if test="${reply.replyer eq sessionScope.username}">
												<div style="display: none">${reply.reply_no}</div>
												<img src="../resources/img/imgforboard/edit_image.png"
													class="imageforeditreply">
												<img src="../resources/img/imgforboard/remove_image.png"
													class="imagefordeletereply">
											</c:if>
											
											<c:if test="${sessionScope.username eq 'Admin'}">
												<div style="display: none">${reply.reply_no}</div>
												<img src="../resources/img/imgforboard/edit_image.png"
													class="imageforeditreply" style="display:none">
												<img src="../resources/img/imgforboard/remove_image.png"
													class="imagefordeletereply">
											</c:if>
											
										</ul>
									</div>
								</c:if>

								<!-- count가 2보다 같거나 크면 나머지는 display : none로 감추기 -->
								<c:if test="${count gt 1 }">
									<!-- count가  2보다 같거나 크고 count가 2일경우 더보기 칸 추가. -->
									<c:if test="${count eq 2 }">
										<span class="more" style="cursor: pointer; color: gray;">더보기...</span>
										<br>
									</c:if>
									
									<div class="comments" style="display: none;">
										<ul id="forid">
											<li id="commentwriter" class="reply" style="cursor: pointer">${reply.replyer}</li>
											<li class="reply">${reply.reply }</li>
											<c:if test="${reply.replyer eq sessionScope.username}">
												<div style="display: none">${reply.reply_no}</div>
												<img src="../resources/img/imgforboard/edit_image.png"
													class="imageforeditreply">
												<img src="../resources/img/imgforboard/remove_image.png"
													class="imagefordeletereply">
											</c:if>
											<c:if test="${sessionScope.username eq 'Admin'}">
												<div style="display: none">${reply.reply_no}</div>
												<img src="../resources/img/imgforboard/edit_image.png"
													class="imageforeditreply" style="display:none">
												<img src="../resources/img/imgforboard/remove_image.png"
													class="imagefordeletereply">
											</c:if>
											
										</ul>
									</div>
								</c:if>

								<c:set var="count" value="${count+1}" />
							</c:if>
						</c:forEach>
						<!-- reply for문 끝 -->


						<!-- 댓글 다는부분 -->
						<c:if test="${sessionScope.username ne 'Admin'}">
							<div id="commentside">
								<div id="writernameforcomment">${sessionScope.username }</div>
								<input type="text" class="comment">
								<button id="commentbutton">댓글달기</button>
							</div>
						</c:if>
						<c:if test="${sessionScope.username eq 'Admin'}">
							<div id="commentside" style="display:none">
								<div id="writernameforcomment">${sessionScope.username }</div>
								<input type="text" class="comment">
								<button id="commentbutton">댓글달기</button>
							</div>
						</c:if>
						<!-- 댓글 다는부분 끝 -->


					</div>
					<!-- 사진 밑으로 좋아요 버튼 및 댓글내용 댓글 끝-->

				</div>
				<!-- 게시글 div end-->
			</c:forEach>
		</div>
	</div>

	<footer id="footer">
		<div class="container-fluid">
			<div class="col-md-12">
				<p id="ff">Copyright &copy; 2018 Company Name | Designed by
					TemplateMo</p>
			</div>
		</div>
	</footer>


</body>
</html>