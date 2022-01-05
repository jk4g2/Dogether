<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>관리자 페이지입니다.</title>
    <!-- 공통 적용 -->
    <script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <link rel="apple-touch-icon" href="apple-touch-icon.jpg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/templatemo-style.css">
    <link rel="stylesheet" href="../resources/css/PhoneCSS.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/NAVandFOOTER.css">
    <!-- 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
    <!-- 반응형 웹페이지  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- admin 적용 -->
    <link href="${pageContext.request.contextPath}/resources/css/admin/admin.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/admin/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/admin/style.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/admin/common-scripts.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/admin/adminpage.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/admin/admingraph.js"></script>
	
	<!--상품 추가 글자수 제한--------------------------------------------------------------------------------------------------------- -->
	<script type="text/javascript">
		function maxLengthCheck(object){
			if (object.value.length > object.maxLength){
				object.value = object.value.slice(0, object.maxLength);
			}    
		}
	</script> 
	<!--상품 추가 글자수 제한--------------------------------------------------------------------------------------------------------- -->
	<!--상품이미지 미리보기--------------------------------------------------------------------------------------------------------- -->
	<script> 
	   function setThumbnail(event) {
	      var reader = new FileReader(); reader.onload = function(event) {
	         $("#productImage_container").empty();//일단 비우자
	         var img = document.createElement("img");
	         img.setAttribute("src", event.target.result);
	         document.querySelector("div#productImage_container").appendChild(img);
	         }; 
	         reader.readAsDataURL(event.target.files[0]); 
	      } 
	</script>
	<!--상품이미지 미리보기--------------------------------------------------------------------------------------------------------- -->
</head>
<style>
/* 이미지 규격 통일 */
.imgSize{
	width: 200px;
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
<body class="boxed-page" >
    <!--sidebar start-->
    <aside>
        <div id="sidebar" tabindex="0" style="overflow: hidden; outline: none;">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
            	<ul class="sidebar-menu" style="padding:25px;">
                    <li><a href="#adminpage" id="adminpage">첫페이지</a></li>
                    <li><a href="#adminRNG" id="adminRNG">런닝구 관리</a></li>
                    <li><a href="#adminBST" id="adminBST">자랑하기 관리</a></li>
                    <li><a href="#adminMember" id="adminMember">회원 관리</a></li>
                    <li><a href="#adminOrder" id="adminOrder">쇼핑몰 주문 관리</a></li>
                    <li><a href="#adminProducts" id="adminProducts">쇼핑몰 상품 관리</a></li>
                </ul>
           </ul> <!-- sidebar menu end --> 
        </div>
    </aside><!--sidebar end-->
    
    <!-- 내브바 -->
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
        <div class="row" style="display:contents">
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
    </section> <!-- end내브 -->

    <!--main content start-->
    <section id="main-content" >
        <section class="wrapper">
            <!-- 여기부터 내용부 -->
            <div class="row" >
                <div class="col-md-12" >
                    <!-- 상단 메뉴 --> 
                    <section class="card">
                        <div class="card-body" >
                            <h1 id="h1Admin">관리자 페이지</h1>           	
                            <h1 id="h1RNG" style="display:none;">런닝구 관리 페이지</h1>
                            <h1 id="h1BST" style="display:none;">자랑하기 관리 페이지</h1>
                            <h1 id="h1Member" style="display:none;">회원 관리 페이지</h1>
                            <h1 id="h1Order" style="display:none;">쇼핑몰 주문 관리 페이지</h1>
                            <h1 id="h1Products" style="display:none;">쇼핑몰 상품 관리 페이지</h1>
                            <!-- 정렬하기 -->
                            <div class="pro-sort">
                            	<!-- 런닝구 정렬 -->
                            	<div class="sortRNG divHide" style="display:none;">
	                                <label class="pro-lab">Sort By</label>
	                                <select class="sortTypeRNG" name="sortTypeRNG">
	                                    <option id="recentRoom" value="1">작성일 최신순</option>
	                                    <option id="recentMeeting" value="2">미팅 날짜순</option>
	                                </select>
	                                <a id="rngSort" href="#rngSort">정렬하기</a>
                                </div>
                                <!-- 자랑하기 정렬 -->
                                <div class="sortBST divHide" style="display:none;">
	                                <label class="pro-lab">Sort By</label>
	                                <select class="sortTypeBST" name="sortTypeBST">
	                                    <option id="recentBoard" value="0">작성일 최신순</option>
	                                    <option id="topLike" value="1">좋아요순</option>
	                                </select>
	                                <a id="bstSort" href="#bstSort">정렬하기</a>
                                </div>
                                <!-- 회원 정렬 -->
                                <div class="sortMember divHide" style="display:none;">
	                                <label class="pro-lab">Sort By</label>
	                                <select class="sortTypeMember" name="sortTypeMember">
	                                    <option id="nameAcs" value="0">이름순</option>
	                                    <option id="ageAcs" value="1">생년월일순</option>
	                                    <option id="blackList" value="2">블랙리스트만</option>
	                                </select>
	                                <a id="memberSort" href="#memberSort">정렬하기</a>
                                </div>
                                <!-- 주문 정렬 -->
                                <div class="sortOrder divHide" style="display:none;">
	                                <label class="pro-lab">Sort By</label>
	                                <select class="sortTypeOrder" name="sortTypeOrder">
	                                    <option id="dateOfOrder" value="4">주문일자순</option>
	                                    <option id="confirmY" value="5">구매확정만</option>
	                                    <option id="return1" value="1">반품신청만</option>
	                                    <option id="return2" value="2">반품처리중만</option>
	                                    <option id="return3" value="3">반품완료만</option>
	                                </select>
	                                <a id="orderSort" href="#orderSort">정렬하기</a>
                                </div>
                            </div>  
                            <!-- 상품 추가하기 -->
                            <div class="float-right" style="display:none;">
                                <ul class="pagination pagination-sm mb-0">
                                    <li class="page-item"><a class="adminProductInsert" href="#adminProductInsert">상품 추가하기</a></li>
                                </ul>
                            </div>
                        </div>
                    </section> <!-- end 상단 메뉴 --> 

					<!-- 목록 start -->
                    <div class="row product-list">
                        <div class="col-md-12">
                            <section class="card">
                                <div class="card-body text-center" style="margin:auto;" >
	                                <!-- 여기부터 복사하기 -->
	                                <!-- 첫페이지 그래프 띄우기 -->
	                                <table id="adminmain" border="2" style="margin:auto; width: 900px; height:300px;">
	                                    <tr>
	                                        <th>전체 회원 수</th>
	                                        <th>전체 런닝구 매칭 건수</th>
	                                        <th>전체 자랑하기 글 수</th>
	                                    </tr>
	                                    <tr>
											<td align="center" id="memberCount">${ memberCount }</td>
												<div id="maleCnt" style="display:none"> ${maleCnt }</div>
												<div id="femaleCnt" style="display:none"> ${femaleCnt }</div>
												
											<td id="matchedCount" align="center">${ matchedCount }</td>
												<div id="allRNGCnt" style="display:none"> ${allRNGCnt} </div>
												<div id="maching" style="display:none"> ${allRNGCnt - matchedCount} </div>
												
											<td id="boastCount" align="center">${ boastCount }</td>
												<div id="likeCnt" style="display:none"> ${likeCnt} </div>
	                                    </tr>
	                                     <tr>
											<td align="center"> 
												<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
												<canvas id="pie-chart" width="300" height="300"></canvas></td>
											<td align="center">
												<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
												<canvas id="pie-chart2" width="300" height="300"></canvas></td>
											<td align="center">
												<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
												<canvas id="bar-chart" width="300" height="300"></canvas></td>
	                                    </tr>
	                                </table>
                                    <!-- 런닝구  -->
                                    <div class="runninggooManageList" >
	                                    <!-- ########## 런닝구 리스트  ########## -->
										<table id="adminRNGList" border="2" style="display:none; width:1100px;">
	                                    <!-- 여기에 ajax에서 동적으로 생성한 tr>td가 들어감 -->                                      
										</table>		
                                    </div>
                                    <!-- 자랑하기 -->
                                    <div class="boastManageList" >
	                                    <!-- ########## 자랑하기 리스트  ########## -->
										<table id="adminBSTList" border="2" style="display:none; width:1100px;">
										<!-- 여기에 ajax에서 동적으로 생성한 tr>td가 들어감 -->                                      
										</table>		
                                    </div>
                                    <!-- 회원  -->
                                    <div class="memberManageList" >
	                                    <!-- ########## 회원 리스트  ########## -->
										<table id="adminMemberList" border="2" style="display:none; width:1100px;">
	                                    <!-- 여기에 ajax에서 동적으로 생성한 tr>td가 들어감 -->                                      
										</table>		
                                    </div>
                                    <!-- 쇼핑몰  -->
                                    <div class="orderManageList" >
	                                    <!-- ##########	주문 리스트  ########## -->
										<table id="adminOrderList" border="2" style="display:none; width:1100px;">
	                                    <!-- 여기에 ajax에서 동적으로 생성한 tr>td가 들어감 -->                                      
										</table>		
                                    </div>
                                    <div class="productsManageList" >
	                                    <!-- ########## 상품 리스트  ########## -->
	                                    <table id="adminProductsList" border="2" style="display:none; width:1100px;">
	                                    <!-- 여기에 ajax에서 동적으로 생성한 tr>td가 들어감 -->                                      
										</table>		
										<!--  상품 추가하기 -->
									     <iframe id="iframe1" name="iframe1" style="display:none"></iframe>
			                             <form method="post" id="productInput" action="productsInsert.do" target="iframe1" enctype="multipart/form-data" > 
									   	 <table border="1" class='productList table2' style="display:none; ">
									        <tr>
									           <td class="normalbold tb_ttl">
									              <div align="center">상품이미지</div>
									           </td>
									           <td colspan="3" class="normal" id="profileTD">
									              <div id="productImage_container"></div>
									              <input type="file" onchange="setThumbnail(event);" id="productImgFile" name='file' maxlength="60" size="30" accept="image/jpeg,.jpg,.png" required>
									           </td>
									        </tr>
									        <tr> 
									           <td class="normalbold tb_ttl"> 
									              <div align="center">상품ID</div>
									           </td>
									           <td colspan="3" class="normal"> 
									              <input type="text" maxlength="10" oninput="maxLengthCheck(this)" name="productID" id="productID" size="20" required/> 
									           </td>
									       </tr>
									       <tr> 
									           <td class="normalbold tb_ttl"> 
									              <div align="center">상품명</div>
									           </td>
									           <td colspan="3" class="normal"> 
									              <input type="text" maxlength="10" oninput="maxLengthCheck(this)" name="productName" id="productName" size="20" required/> 
									           </td>
									       </tr>
									       <tr> 
									           <td class="normalbold tb_ttl">
									              <div align="center">상품가격</div>
									           </td>
									           <td width="154" class="normal"> 
									              <input type="number" maxlength="10" oninput="maxLengthCheck(this)" name="productPrice" id="productPrice" required/>
									           </td>
									       </tr>
									       <tr> 
									           <td class="normalbold tb_ttl"> 
									              <div align="center">상품 상세 정보</div>
									           </td>
									           <td colspan="3" height="23" class="normal"> 
													<textarea maxlength="100" oninput="maxLengthCheck(this)"  name="productContent" id="productContent" required></textarea>
									           </td>
									       </tr>
									       <tr>
									           <td colspan="4" class="normal" width="70%" height="5%"> 
									              <div align="center"> 
									                <input type="submit" class="submitBtn" id="submitBtn" value="등   록"/>
									                <input type="reset" class="submitCancleBtn" value="취   소"/>
									              </div>
									           </td>
									       </tr>
									     </table>
									     </form>                                     
                                    </div>
                                </div>
                            </section>
                        </div>  
                    </div>      
                </div>
            </div> <!-- end row -->
        </section> <!-- end wrapper-->
    </section> <!-- end main content -->
	
	<footer id="footer">
        <div class="container-fluid">
            <div class="col-md-12">
                <p id="ff">Copyright &copy; 2018 Company Name 
                | Designed by TemplateMo &
	            2018 &copy; FlatLab by VectorLab.
             </p>
            </div>
        </div>
</footer>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    
</body>
</html>