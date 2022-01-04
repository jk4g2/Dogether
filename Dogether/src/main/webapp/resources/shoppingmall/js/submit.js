$(document).ready(function(){


//장바구니  추가--------------------
  $(document).on('click', '#cartInsertBtn', function(){
    let Cnt = $("#productCnt").val();
    let Name = $("#ProductNameName").text();
    let ID = $("#productIDvalue").text();
    console.log(Cnt);
    console.log(Name);
    console.log(ID);
    $.ajax({
    	type : 'post',
    	data : {productQuantity : Cnt, productID : ID},
    	contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
    	url : 'shoppingCartInsert.do',
    	success : function(result){
    		let data1 = $.trim(result);
    		if(data1 === $.trim("0")){
				alert("로그인이 필요한 서비스입니다.");
				//window.location ="../index.do";
				console.log(1);
    		}if(data1 !== $.trim("0") ){
				alert(Name+" "+Cnt+"건 "+result);
    		}
    	},//end success
    	error : function(err){
    		alert("에러발생--------------");
    	}//end error
    });//end of ajax
  })
//end of click



//장바구니에서 삭제--------------------
  $(document).on('click', '#removeBtn', function(){
    let ID = $(this).parent().prev().prev().prev().prev().find("#PID").text();
    let Name = $(this).parent().prev().prev().prev().prev().find("#ProductName").text();

    $.ajax({
    	type : 'post',
    	data : {productID : ID},
    	contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
    	url : 'deletefromjanbaguni.do',
    	success : function(result){
    		alert(Name+" "+result);
			window.location.replace("shoppingCart.do");
    	},//end success
    	error : function(err){
    		alert("에러발생--------------");
    	}//end error
    });//end of ajax

  })//end of click



	$(function() {
		var IMP = window.IMP;
		IMP.init("imp19194605");
	})



  $("#updateBtn").click(function(){

    if($(".productID").val() === undefined){
      return;
    }
    if($("#ProductCNT").val() === undefined){
      return;
    }

    $("#formform").submit();


  })//end of updateBtn















}); //end of ready
