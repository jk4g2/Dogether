
// 날짜 데이터 값 받아오기
var today = new Date();
$("#meeting-time").change(function(){
var checkMeetingTime = new Date($("#meeting-time").val());
	
	var todayMinusMeetingTime = checkMeetingTime.getTime() - today.getTime();
	
	var minusDateResult = todayMinusMeetingTime / 1000 / 60 / 60 / 24;
	console.log(minusDateResult);
	
	if( minusDateResult < 0 ){
		alert("지난 날짜는 선택할 수 없습니다.");
		$("#meeting-time").val("");
	}	
});

$('#selectRunningDistance').hide();
	$('#selectExerciseTime').hide();

// 스포츠 타입 값 받아오기
$("#sportsSelect").change(function(){

	
	// 스포츠 종목 값 0~5 값 불러오기
	var sportsType = $("#sportsSelect").val();
	console.log(sportsType);
	
	// 러닝타임 값에 따라 입력 폼 생기게 하는 JQuery
	if(sportsType==0){
		$('#selectRunningDistance').show();
		$('#selectExerciseTime').hide();
	}else if(sportsType==9999){
		$('#selectRunningDistance').hide();
		$('#selectExerciseTime').hide();
	}else{
		$('#selectRunningDistance').hide();
		$('#selectExerciseTime').show();
	}
});



// 멤버의 포인트를 불러오는 AJAX
$('#jeonsong').click(function(){
	$.ajax({
		url : 'viewMemberPoints.do',
		// 세션으로 얻어온 memberID값을 보내야한다.
		type : 'get',
		dataType : 'text',
		success : function(result){
			$("#roomCreateSubmitBtn").attr("disabled", false);
			$('#mbPoint').html(result);
//			console.log("보유 포인트 조회완료");	
			if($("#mbPoint").text() < 5000){
				if (!confirm("포인트가 부족합니다. 충전하시겠습니까?")) {
			        // 취소(아니오) 버튼 클릭 시 이벤트
			        alert("다음에 같이 뛰어요:)");
					window.location.href="../runninggoo/";
			    } else {
			        // 확인(예) 버튼 클릭 시 이벤트
			    	// roomCreate 버튼 비활성화 & 마이페이지 메인(포인트결제) 팝업띄우기
			    	$("#roomCreateSubmitBtn").attr("disabled", true);
					window.open('../mypage/', 'popup02', 'width=600, height=400, scrollbars= 0, toolbar=0, menubar=no');
			    } // end-of-else
			}
		},
		error : function(err){
			alert("전송실패");
		}
	}); // end-of-ajax
})

// ############ 런닝구 방만들기 페이지 input null값 유효성검사  ############
    $(document).on("click","#roomCreateSubmitBtn",function(){		 
    	if($("#getLat").val() =="" || $("#getLong").val() =="" || $("#getFullAddress").val() =="" || $("#meetingTime").val() =="" || $("#create_host_comment").val() =="" || $("#sportsSelect").val() =="9999"){	
    		alert("공란을 채워주세요!");
    	    return false;
    	} else if($("#mbPoint").html() ==""){
    		alert("포인트를 조회해주세요!");
    		return false;
    	}
    	$('#roomCreateSubmitBtn').submit();
    }); //end click

// 슬라이더 인풋 태그들의 실시간 값 표시
function ShowSliderValue(sVal)
{
	var obValueView = document.getElementById("slider_value_view");
	obValueView.innerHTML = sVal
}

var RangeSlider = function(){
	var range = $('.slider_range');
    
	range.on('input', function(){		
		ShowSliderValue(this.value);
	});
};

RangeSlider();


// DoJoin 클릭시 호스트에게 popup 띄우기
function receiveRngRequest(){
	window.open('showRngJoinMemberInfo.do', 'popup01', 'width=300, height=400, scrollbars= 0, toolbar=0, menubar=no');
}

// #### 참가자(user)가 참가 버튼 클릭했을 때 ##########################
// onclick 쓰지말고 제이쿼리로 직접 찾아서 이벤트걸기
// 버튼에 each를 걸고 버튼이 this
let userPoint = parseInt($("#nowMemberPoint").text());
$(".userBtn").click(function(){		
	if( userPoint < 5000){		// 참여 불가 (참가자(user)의 포인트가 5000원 보다 작을 때)
		if (!confirm("포인트가 부족합니다. 충전하시겠습니까?")) {
	        // 취소(아니오) 버튼 클릭 시 이벤트
	        alert("다음에 같이 뛰어요:)");
			return;			//window.location.href="../runninggoo/";	//런닝구 리스트 페이지로 이동
	    } else {
	        // 확인(예) 버튼 클릭 시 이벤트
	    	// 마이페이지 메인(포인트결제) 페이지로 이동
			window.location.href="../mypage/";
	    } // end-of-else
	} else {		// 참여 가능 (참가자(user)의 포인트가 5000원 보다 클 때)
		if (!confirm("참여신청 할까요?")) {
        // 취소(아니오) 버튼 클릭 시 이벤트
        alert("참여신청이 취소되었습니다.");
		} else {
        // 확인(예) 버튼 클릭 시 이벤트
        var nowRoomNum = $(this).parent().prev().prev().prev().prev().children(".rngRoomNum").text();
//        alert(nowRoomNum);
        $.ajax({
        	url: "bringBasicRngRoomInfo.do",
        	data : { roomNumber : nowRoomNum},
        	success: function(res){
		        alert(res);
		        location.reload();
        	},
        	error : function(){
        		alert("요청실패!");
        	}
        }); // end-of-ajax   
		} // end-of-els	e
	}	
})//end click 



// 호스트가 enrollment 버튼을 눌렀을때 팝업창 화면
$('.hostBtn').click(function(){
	var nowRoomNum = $(this).parent().prev().prev().prev().prev().children(".rngRoomNum").text();
	alert("런닝구 멤버들의 신청현황 조회를 완료했습니다.");
	window.open('viewJoinMemberTotalInfo.do?roomNumber=' + nowRoomNum, 'popup01', 'width=600, height=400, scrollbars= 0, toolbar=0, menubar=no');
		
}) // end-of-click

$('.delBtn').click(function(){
	var nowRoomNum = $(this).parent().prev().prev().prev().prev().children(".rngRoomNum").text();
	var nowHostID =$(this).parent().prev().prev().prev().prev().children(".rn_profile_nickname").text();
	//alert(nowRoomNum);
	///alert(nowHostID);
	
	// 아니오 눌렀을때
	if(!confirm("정말 런닝구 방을 삭제할까요?")){
		alert("방삭제가 취소되었습니다.")
	}
	// 확인 눌렀을때
	else{
		//alert(nowRoomNum);
		//alert(nowHostID);
		$.ajax({
			url : "deleteRngRoom.do",
			data : { hostMemberID : nowHostID, roomNum : nowRoomNum },
			success : function(){
				alert("삭제완료!");
				location.replace("../runninggoo/");
			},
			error : function(){
				alert("삭제 실패!");
			}
		}); // end-of-ajax
	}
}) // end-of-click


// 호스트가 수락을 눌렀을때
var isAjax = false;
$('.acceptJoin').click(function(){
	if(isAjax == true){
		return;
	}
	
	isAjax = true;
	
	var nowRoomNum = $("#roomNum").text();
	//alert(nowRoomNum);
	//alert($("#nowMemberID").text());
	$.ajax({
		url: "updateJoinMemberInfo.do",
        data : { roomNum : nowRoomNum, joinPendingMember : $("#notYetMemberID").text() },
        success: function(res){
		    alert(res);
		    location.replace("../runninggoo/viewJoinMemberTotalInfo.do?roomNumber=" + nowRoomNum);
		    isAjax = false;
       	},
        error : function(){
        	alert("요청실패!!!!");
        }
	}) //end-of-ajax
})



// 호스트가 거절을 눌렀을때
var isRun = false;
$('.deleteJoin').click(function(){
	if(isRun == true){
		return;
	}
	
	isRun = true;
	
	var nowRoomNum = $("#roomNum").text();
	$.ajax({
		url: "deleteJoinMemberInfo.do",
        data : { roomNum : nowRoomNum, joinPendingMember : $("#notYetMemberID").text() },
        success: function(res){
		    alert(res);
		    location.replace("../runninggoo/viewJoinMemberTotalInfo.do?roomNumber=" + nowRoomNum);
		    isRun = false;
       	},
        error : function(){
        	alert("요청실패!!!!");
        }
	}) //end-of-ajax
})

// 런닝구 방 다 차거나 미매칭 상태에서 날짜 만료되면 검은색 배경씌우기
$('.rn_profile_memberCount').each(function(){
	var CrntMembers = $(this).children('.currentMembers').text();
	var maxMembers = $(this).children('.maxMembers').text();
	var nowList = $(this).parent().prev();
	var nowBalloon = $(this).parent().next().next().next().children('.ballon');
	var hostRngRoomID = $(this).prev().prev().text();
	var currentMyID = $(this).parent().parent().parent().parent().prev().text();
	var checkMeetingTime = new Date($(this).parent().next().next().children().children().children().next('#showMeetingTime').text());
	
	var todayMinusMeetingTime = checkMeetingTime.getTime() - today.getTime();
	
	var minusDateResult = todayMinusMeetingTime / 1000 / 60 / 60 / 24;
	console.log(minusDateResult);
	
	
	var refund3 = (parseInt(CrntMembers) >= (parseInt(maxMembers)) && (currentMyID != hostRngRoomID)) && minusDateResult < 0;
	var refund1 = (parseInt(CrntMembers) < (parseInt(maxMembers)) && (currentMyID != hostRngRoomID)) && minusDateResult < 0;
	
	var isPayBck = $(this).parent().prev().prev();
	
	if(isPayBck.attr("class") == "0"){	
		if((refund3 || refund1) == true){
			nowList.addClass('matched matchedBG');
			nowBalloon.addClass('matchedBG');
			isPayBck.attr("class", "1");
		}  // 3
		else if((parseInt(CrntMembers) >= (parseInt(maxMembers)) && (currentMyID != hostRngRoomID))){
			nowList.addClass('matched matchedBG');
			nowBalloon.addClass('matchedBG');
		}
	}
})
$("#top").click(function() {
 $('html, body').animate({
        scrollTop : 0
    }, 400);
    return false;
});




