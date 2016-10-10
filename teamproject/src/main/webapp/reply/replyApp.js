$("#loginBtn").click(function (e) {
	location.href = "../auth/authApp.html"
})

$("#logoutBtn").click(function (e) {
	location.href = "../auth/authApp.html"
})

function ajaxReplyList() {
	$.getJSON(serverAddr + "/reply/list.json", function(obj) {
		var result = obj.jsonResult

		if (result.state != "success") {
			alert("서버에서 데이터를 가져오는데 실패 했습니다.")
			return
		} 

		var contents = ""
		var arr = result.data	
		for (var i in arr) {
			if ($("#nicknm").text() ==  arr[i].nicknm ) {
				 contents +=  "<span class='listNickName' style='font-weight:bold; float:right; display:block; max-width: 300px; clear:both'>" + arr[i].nicknm +"</span>" +	
				"<div class='bubble-me' style='float:right; clear:both;'>" +			   			 
				"<ul style='float:right; clear:both;'>" +
				"<li id='no' style='display:none'>" + arr[i].no + "</li>" +				
				"<li>" + arr[i].contents + " </li>" +        
				//"<td>" + arr[i].createdDate2 +"</td>" +			
				//"<li class='delBtnList'>" + '<button id="deleteBtn" type="button" class="btn-xs btn-default my-view glyphicon glyphicon-remove"></button>' + "</li>" +			
				"</ul>" + 
				"</div>";
			} else {
				contents += "<span class='listNickName' style='font-weight:bold; float:left; display:block; max-width: 300px; clear:both'>" + arr[i].nicknm +"</span>" +
				"<div class='bubble' style='float:left; clear:both;'>" +   				  				
				"<ul style='float:left; clear:both'>" +
				"<li id='no' style='display:none'>" + arr[i].no + "</li>" +				
				"<li>" + arr[i].contents + "</li>" +        
				//"<td>" + arr[i].createdDate2 +"</td>" +			
				"<li class='delBtnList'>" + ' ' + "</li>" +			
				"</ul>" + 
				"</div>";
			}
		}
		
		$("#board-Table").html(contents)
		 
		// 태그 를 추가한후 제목에 대해 click 리스너를 추가한다.
		/*
		$(".titleLink").click(function (e) {
			window.location.href = "memberForm.html?no=" + $(this).attr("data-no")
		})       
		*/
	})
}

function ajaxLoginUser() {
	$.getJSON(serverAddr +"/auth/loginUser.json", function(obj) {
		var result = obj.jsonResult
		if (result.state != "success") {
			$(".my-login").css("display", "none")
			return
		} 

		
		$("#userName").text(result.data.name)
		$("#nicknm").text(result.data.nicknm)

		
		 
	})

}