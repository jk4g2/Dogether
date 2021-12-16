var buttonVisited = 0;
$(function() {
   $('.likeButton').click(function() {
      if (buttonVisited == 0) {
         buttonVisited = 1;
         $(this).html("좋아요♥");
      } else {
         buttonVisited = 0;
         $(this).html("좋아요♡");
      }
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