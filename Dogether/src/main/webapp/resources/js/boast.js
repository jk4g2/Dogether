$(function() {
  //좋아요 버튼을 눌렀을 때,

   //$('.likeButton').click(function() {
   $(document).on("click",".likeButton",function(){
   		//이미 좋아요가 눌린 상태에서 좋아요 취소...
      let thiss = $(this).parent();
      let likecount = $(thiss).siblings().eq(2);
      //console.log(likecount);
      //let num = Number($(thiss).next().next().next().html().split(' ')[1].split('개')[0]);
      console.log(Number($(likecount).html().split(' ')[1].split('개')));
      let num = Number($(likecount).html().split(' ')[1].split('개')[0]);
      //console.log(num)
		if($(this).val() ==="Y"){
			$.ajax({
        type: "get",
        url: "updateLike.do",
        data:{ boardID : $(this).parent().parent().parent().prev().val(),
               liker: $(this).parent().siblings().last().children().eq(0).html(),
               likeY: $(this).val(),
               board_like_no: num-1
             },
        success: function(result){
            $(thiss).empty();
            $(thiss).append('<button class="likeButton" value="N">좋아요♡</button>');
            $(likecount).empty();
            $(likecount).append("좋아요 " + (num-1) + "개");
        },
        error: function(error){
          alert(error);
        },
      })
		}
		//좋아요가 눌리지 않은상태에서 좋아요..
		else if($(this).val()==="N"){
      $.ajax({
        type: "get",
        url: "updateLike.do",
        data:{ boardID : $(this).parent().parent().parent().prev().val(),
               liker:$(this).parent().siblings().last().children().eq(0).html(),
               likeY: $(this).val(),
               board_like_no: num+1
             },
        success: function(result){
          //$(this).parent().empty();
          //$('#ajaxlikebutton').append('<button class="likeButton" value="Y">좋아요♥</button>');
          $(thiss).empty();
          $(thiss).append('<button class="likeButton" value="Y">좋아요♥</button>');


          $(likecount).empty();
          $(likecount).append("좋아요 " + (num+1) + "개");
          //$('#likeCount').empty();
          //$('#likeCount').append("좋아요 "+ (num+1) + "개");
        },
        error: function(error){
          alert(error);
        },
      })
		};
   })

   $(".plusButton").click(function() {
      window.location.href="insertBoard.do";
   });



   $(document).on("click","#commentbutton",function(){
      console.log(1);
      alert($("#more").html());
   });

   $(document).on("click","#more",function(){
   		 console.log(1)
         $(this).nextUntil("#commentside").css({"display":"block"});
         $(this).css({"display":"none"});
   });


});
