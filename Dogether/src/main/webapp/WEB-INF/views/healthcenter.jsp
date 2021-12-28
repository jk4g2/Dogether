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
<link rel="stylesheet" href="./resources/css/csshealth/main.css" />
<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
</head>

<style>

.is-preload {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  min-height: 100vh;
}


</style>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<class="logo"> 
						<img src="./resources/img/imgformain/header logo.png">			
				</header>

				<!-- Content -->
				<section>
					<header class="main">
						<h2>Inbody check</h2>
						<img src="./resources/img/imgformain/3.jpg" class="img-fluid" alt="인바디 측정" style="width:1400px; height:450px;">
					</header>

					<!-- Content -->
					<!--<h2 id="content">Summary</h2>
					<p>인체의 성분(수분, 단백질, 지방, 골격 등)의 수치와 비만 여부등을 체크하는 검사의 통칭.</p>-->
					<!-- <div class="row">
						<div class="col-6 col-12-small">
							<h3>Detail</h3>
							<p>다이어트를 한다면 기본적으로 해야할 검사. 체내의 체지방, 근육량, 체수분, 사이즈들을 분석해주는
								검사다. 근육이 많은 사람은 유산소 운동을 중점으로 다이어트를 해야하고 적은 사람은 무산소 운동과 병행해가면서
								운동을 해야 다이어트 효율이 높아진다. 즉 인바디 검사는 다이어트 방식의 방향을 제시하는 검사라고 할 수 있겠다.
								또한 열심히 다이어트를 하고 있다면 한 달에 한 번 정도 검사하면 점점 발전을 확인할 수 있다.</p>
						</div>
						<div class="col-6 col-12-small">
							<h3>How to do Inbody</h3>
							<p>다이어트에 대한 관심과 인바디 기계의 보급으로, 매우 널리 퍼지고 있다. 헬스장에도 하나씩 비치되어 있어
								일단 가입을 한다면 이것부터 검사하고 운동상담을 해주는게 보통이다. 5분 안에 모든 절차가 끝나니 시간이 많이
								걸릴까 걱정할 필요 없다. 2013년부터는 일부 동네 보건소에서도 공짜로 받을 수 있다. 물론 아닌 동네도 있고,
								몇 달에 한번만 검사해주는 곳도 있으니 미리 전화로 물어보고 방문하도록 하자.</p>
						</div> -->
					<!-- Break -->
					<!--<div class="col-4 col-12-medium">
							<h3>See the result</h3>
							<p>기본적으로 가장 위쪽에 위치한 체성분분석 표에서 체중, 골격근량, 체지방량의 순서라고 봤을 때 각 부분의
								끝 부분을 선으로 이을 때 'I'자에 가까울 수록 표준형, 'C' 자에 가까울 수록 비만형, '역 C'자에 가까울
								수록 강인형이라고 한다.</p>
						</div>
						<div class="col-4 col-12-medium">
							<h3>Matters that you should pay attention</h3>
							<p>많은 비만인구들이 체성분 분석 결과를 보고 자신이 비록 살은 쪘지만 근육은 많은 체형이라는 착각을 한다.
								표준 수치보다는 비율을 중점적으로 보면서 현재의 상태를 파악할 필요가 있다.</p>
						</div>
						<div class="col-4 col-12-medium">
							<h3>Inbody</h3>
							<p>'InBody'라는 이름 기업의 체성분 분석 제품 브랜드인 '인바디'가 체성분 분석검사를 통칭하는
								보통명사로 굳어진 것이라고 할 수 있다.기업명보다 브랜드가 훨씬 유명하게 되면서 기업명을 바꾸었다.</p>
						</div>
					</div>

					<hr class="major" /> -->

					<!-- Elements -->
					<!-- <h2 id="elements">* Find public medical centers *</h2> -->
					<div class="row gtr-200">
						<div class="col-6 col-12-medium">

							<h4>지역별 인바디 측정 가능 보건소를 찾아보세요.</h4>
							<ul class="actions">
								<li><a href="healthcenter.do?centerAddress=서울특별시" class="button primary">서울특별시</a></li>
								<li><a href="healthcenter.do?centerAddress=부산광역시" class="button">부산광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=인천광역시" class="button primary">인천광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=대전광역시" class="button">대전광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=대구광역시" class="button primary">대구광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=광주광역시" class="button">광주광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=울산광역시" class="button primary">울산광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=경기도" class="button">경기도</a></li>

							</ul>
							<ul class="actions">	
								<li><a href="healthcenter.do?centerAddress=전라남도" class="button primary">전라남도</a></li>
								<li><a href="healthcenter.do?centerAddress=전라북도" class="button">전라북도</a></li>
								<li><a href="healthcenter.do?centerAddress=경상남도" class="button primary">경상남도</a></li>
								<li><a href="healthcenter.do?centerAddress=경상북도" class="button">경상북도</a></li>
								<li><a href="healthcenter.do?centerAddress=충청남도" class="button primary">충청남도</a></li>
								<li><a href="healthcenter.do?centerAddress=충청북도" class="button">충청북도</a></li>
								<li><a href="healthcenter.do?centerAddress=강원도" class="button primary">강원도</a></li>
								<li><a href="healthcenter.do?centerAddress=제주도" class="button">제주도</a></li>

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

				<ul class="pagination">
					<li><span class="button disabled">Prev</span></li>
					<li><a href="#" class="page active">1</a></li>
					<li><a href="#" class="page">2</a></li>
					<li><a href="#" class="page">3</a></li>
					<li><span>&hellip;</span></li>
					<li><a href="#" class="page">8</a></li>
					<li><a href="#" class="page">9</a></li>
					<li><a href="#" class="page">10</a></li>
					<li><a href="#" class="button">Next</a></li>
				</ul>
</body>
</html>