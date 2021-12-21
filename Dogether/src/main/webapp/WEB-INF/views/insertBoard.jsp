<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="./resources/css/templatemo-style.css">
<link rel="stylesheet" href="./resources/css/boast.css">
<link rel="stylesheet" href="./resources/css/boast2.css">
<link rel="stylesheet" href="./resources/css/boast3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<script src="./resources/js/plugins.js"></script>
<script src="./resources/js/boast.js"></script>
<script src="./resources/js/main.js"></script>
<script>
<!--프로필사진 미리보기--------------------------------------------------------------------------------------------------------- -->
	function validateFileType() {
		var fileName = document.getElementById("fileName").value;
		var idxDot = fileName.lastIndexOf(".") + 1;
		var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
		if (extFile != "jpg" && extFile != "jpeg" && extFile != "png") {
			alert("jpg/jpeg/png 파일로 다시 올려주세요!!");
			return 0;
		}
		return 1;
	}

	function setThumbnail(event) {
		validateFileType();
		var reader = new FileReader();
		reader.onload = function(event) {
			$("#image_container").empty();//일단 비우자
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img);
		};
		reader.readAsDataURL(event.target.files[0]);
	}
	
	function submitstuff(){
		var result = validateFileType();
		if(result==0){
			return;
		}
		document.myform.submit();
	}
</script>


<title>자랑하기 - 글올리기</title>

</head>
<body>
	<nav>
		<div class="logo">
			<a href="index.jsp">DO<em>GETHER</em></a>
		</div>
		<div class="menu-icon">
			<span></span>
		</div>
	</nav>
	<!-- header + nav bar -->
	<section class="overlay-menu">
		<div class="container">
			<div class="row">
				<div class="main-menu">
					<ul>
						<li><a href="#">런닝구</a></li>
						<li><a href="#">Gym 예약할까</a></li>
						<li><a href="#">온라인 PT</a></li>
						<li><a href="#">자랑하기</a></li>
						<li><a href="#">BMI 측정가능 보건소</a></li>
						<li><a href="#">쇼핑몰</a></li>
						<li><a href="Mypage">마이페이지</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<div id="ontheside">
		<div class="mainContainer">
			<h3 id="titlee">글 올리기</h3>
			<div id="cardContent">
				<form method="post" action="insertBoards.do" name="myform" enctype="multipart/form-data">
					<input type="hidden" name="memberID" value="${sessionScope.username}"/>
					<input type="file" id="fileName" name="file" onchange="setThumbnail(event);"
						accept=".png, .jpg, .jpeg" required>
					<div id="image_container"></div>
					<div class="mb-3">
						<label for="content">내용</label>
						<textarea class="form-control" rows="5" name="boardContent"
							id="content" placeholder="내용을 입력해 주세요" required></textarea>
					</div>

					<button type="button" class="btn btn-primary" onclick="submitstuff()">확인</button>

				</form>
			</div>
		</div>
	</div>

	<!-- footer -->
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