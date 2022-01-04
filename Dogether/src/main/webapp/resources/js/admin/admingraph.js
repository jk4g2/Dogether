$(document).ready(function() {
	// 회원 그래프
	let maleCnt = $("#maleCnt").text();
	let femaleCnt = $("#femaleCnt").text();
	new Chart(document.getElementById("pie-chart"), {
	    type: 'pie',
	    data: {
	      labels: ["남", "여"],
	      datasets: [{
	        label: "회원수 (명)",
	        backgroundColor: ["#3e95cd", "#c45850"],
	        data: [maleCnt ,femaleCnt]
	      }]
	    },
	    options: {
	      title: {
	        display: true,
	        text: 'Dogether 전체 회원 기준 남 / 여 성별 비율'
	      }
	    }	//end option
	});	 //end pie-chart
	
	// 런닝구 그래프 
	let maching = $("#maching").text().trim();
	let matchedCount = $("#matchedCount").text().trim();
	new Chart(document.getElementById("pie-chart2"), {
	    type: 'pie',
	    data: {
	      labels: ["매칭중인 런닝구", "매칭된 런닝구"],
	      datasets: [{
	        label: " (건수)",
	        backgroundColor: ["#3e95cd", "#c45850"],
	        data: [maching ,matchedCount]
	      }]
	    },
	    options: {
	      title: {
	        display: true,
	        text: 'Dogether 매칭중인 런닝구 / 매칭된 런닝구 비율'
	      }
	    } //end option
	}); //end pie-chart2
	
	// 자랑하기 그래프
	let boastCount = $("#boastCount").text().trim();
	let likeCnt = $("#likeCnt").text().trim();
	console.log(likeCnt);
	new Chart(document.getElementById("bar-chart"), {
	    type: 'bar',
	    data: {
	      labels: ["전체 자랑하기", "전체 자랑하기 좋아요"],
	      datasets: [
	        {
	          label: "건수",
	          backgroundColor: ["#8e5ea2","#3cba9f"],
	          data: [boastCount,likeCnt]
	        }
	      ]
	    },
	    options: {
	    	reponsive:false,
		    scales:{
		    	yAxes:[{
		    		ticks:{
		    			beginAtZero: true
		    		}
		    	}]
		    },
		    legend: { display: false },
		    title: {
		    	display: true,
		        text: 'Dogether 전체 자랑하기 게시물, 전체 자랑하기 좋아요'
			 }
	    }	//end option
	}); //end bar-chart
	
});   // end ready