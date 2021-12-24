$(document).ready(function() {

//메인 마이페이지 왼쪽 카테고리에서 클릭했을때!!
  $('#myRNG').click(function(evt){
    evt.preventDefault();				// a태그 링크 기능 무력화
    evt.stopPropagation();				// a태그 링크 기능 무력화
    $("h1").hide();					// 페이지명 안보이게 변경
    $("#h1RNG").show();				// 페이지명 보이게 변경

    $(".myImgPoint").hide();					// 모든 리스트 테이블을 삭제
    $("#adminRNGList").show();			// 런닝구 리스트 테이블만 보임으로 변경

  }); //end click

  //내 게시글 관리 왼쪽 카테고리에서 클릭했을때!!
    $('#myMember').click(function(evt){
      evt.preventDefault();				// a태그 링크 기능 무력화
      evt.stopPropagation();				// a태그 링크 기능 무력화
      $("h1").hide();					// 페이지명 안보이게 변경
      $("#h1Member").show();				// 페이지명 보이게 변경

      $(".myImgPoint").hide();					// 모든 리스트 테이블을 삭제
      $(".boastManageList").show();			// 보드 리스트 테이블만 보임으로 변경
      getMyBoardList();
    }); //end click

    function getMyBoardList(){
      $.ajax({
        type : 'post',
        url : 'myBoardList.do',
        data : {memberID : $("#memberID").text()},
        success : function(result){
          alert(result);
        },
        error : function(err){
          alert("에러발생")
        }
      })//end of ajax
    }//end of getMyBoardList




})//end ready
