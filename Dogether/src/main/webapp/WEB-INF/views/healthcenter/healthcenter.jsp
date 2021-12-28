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
<!-- Scripts -->
<!-- 
<script src="../resources/js/jshealth/jquery.min.js"></script>
<script src="../resources/js/jshealth/browser.min.js"></script>
<script src="../resources/js/jshealth/breakpoints.min.js"></script>
<script src="../resources/js/jshealth/util.js"></script>
<script src="../resources/js/jshealth/main.js"></script>
</head> -->

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

				<section>
					<div class="row gtr-200">
						<div class="col-6 col-12-medium">

							<h4>지역별 인바디 측정 가능 보건소를 찾아보세요.</h4>
							<ul class="actions">
								<li><a href="healthcenter.do?centerAddress=서울특별시"
									class="button primary">서울특별시</a></li>
								<li><a href="healthcenter.do?centerAddress=부산광역시"
									class="button">부산광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=인천광역시"
									class="button primary">인천광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=대전광역시"
									class="button">대전광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=대구광역시"
									class="button primary">대구광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=광주광역시"
									class="button">광주광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=울산광역시"
									class="button primary">울산광역시</a></li>
								<li><a href="healthcenter.do?centerAddress=경기도"
									class="button">경기도</a></li>

							</ul>
							<ul class="actions">
								<li><a href="healthcenter.do?centerAddress=전라남도"
									class="button primary">전라남도</a></li>
								<li><a href="healthcenter.do?centerAddress=전라북도"
									class="button">전라북도</a></li>
								<li><a href="healthcenter.do?centerAddress=경상남도"
									class="button primary">경상남도</a></li>
								<li><a href="healthcenter.do?centerAddress=경상북도"
									class="button">경상북도</a></li>
								<li><a href="healthcenter.do?centerAddress=충청남도"
									class="button primary">충청남도</a></li>
								<li><a href="healthcenter.do?centerAddress=충청북도"
									class="button">충청북도</a></li>
								<li><a href="healthcenter.do?centerAddress=강원도"
									class="button primary">강원도</a></li>
								<li><a href="healthcenter.do?centerAddress=제주도"
									class="button">제주도</a></li>

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
</body>
</html>