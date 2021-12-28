<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Elements - Editorial by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../resources/css/csshealth/main.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="../resources/css/templatemo-style.css">
<link rel="stylesheet" href="../resources/css/boast/boast.css">
<link rel="stylesheet" href="../resources/css/boast/boast2.css">

<link href="../resources/aihometrainer/css/style.css" rel="stylesheet">
<script src="../resources/js/plugins.js"></script>
<script src="../resources/js/main.js"></script>
</head>

<body class=".is-preload ">
	<!-- HEADER -->
	<nav>
		<div class="logo">
			<a href="../index.do">DO<em>GETHER</em></a>
		</div>
		<div class="menu-icon">
			<span></span>
		</div>
	</nav>

	<!-- NAV  -->
	<section class="overlay-menu">
		<div class="container">
			<div class="row">
				<div class="main-menu">
					<ul>
						<li><a href="runninggoo.do">런닝구</a></li>
						<li><a href="#">Gym 예약할까</a></li>
						<li><a href="ai_home_trainer_view/1_aiHT_main.do">온라인 PT</a></li>
						<li><a href="boast.do">자랑하기</a></li>
						<li><a href="healthcenter.do">Inbody 측정 보건소</a></li>
						<li><a href="shoppingmall.do">쇼핑몰</a></li>
						<li><a href="userMyPage/myPage.do">마이페이지</a></li>

					</ul>
				</div>
			</div>
		</div>
	</section>




	<div id="wrapper" style="position:relative; margin-top:100px;">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<section>
					<div class="row gtr-200">
						<div class="col-6 col-12-medium">

							<h4>지역별 인바디 측정 가능 보건소를 찾아보세요.</h4>
							<ul class="actions">
								<li><a href="?centerAddress=서울특별시" class="button primary">서울특별시</a></li>
								<li><a href="?centerAddress=부산광역시" class="button">부산광역시</a></li>
								<li><a href="?centerAddress=인천광역시" class="button primary">인천광역시</a></li>
								<li><a href="?centerAddress=대전광역시" class="button">대전광역시</a></li>
								<li><a href="?centerAddress=대구광역시" class="button primary">대구광역시</a></li>
								<li><a href="?centerAddress=광주광역시" class="button">광주광역시</a></li>
								<li><a href="?centerAddress=울산광역시" class="button primary">울산광역시</a></li>
								<li><a href="?centerAddress=경기도" class="button">경기도</a></li>

							</ul>
							<ul class="actions">
								<li><a href="?centerAddress=전라남도" class="button primary">전라남도</a></li>
								<li><a href="?centerAddress=전라북도" class="button">전라북도</a></li>
								<li><a href="?centerAddress=경상남도" class="button primary">경상남도</a></li>
								<li><a href="?centerAddress=경상북도" class="button">경상북도</a></li>
								<li><a href="?centerAddress=충청남도" class="button primary">충청남도</a></li>
								<li><a href="?centerAddress=충청북도" class="button">충청북도</a></li>
								<li><a href="?centerAddress=강원도" class="button primary">강원도</a></li>
								<li><a href="?centerAddress=제주도" class="button">제주도</a></li>

							</ul>

							<!-- Table -->
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>보건소 이름</th>
											<th>주소</th>
											<th>전화번호</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${list}">
											<tr>
												<td>${item.centerName}</td>
												<td>${item.centerAddress}</td>
												<td>${item.centerPhoneNumber}</td>
											</tr>
										</c:forEach>


									</tbody>

								</table>
							</div>

						</div>

					</div>
				</section>

			</div>
		</div>
	</div>
	<footer id="footer" style="position:absolute; bottom:0px;">
		<div class="container-fluid">
			<div class="col-md-12">
				<p id="ff">Copyright &copy; 2018 Company Name | Designed by
					TemplateMo</p>
			</div>
		</div>
	</footer>



</body>
</html>