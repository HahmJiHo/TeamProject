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
				 contents += "<tr>" +
				"<td id='no'>" + arr[i].no + "</td>" +
				"<td><a class='titleLink' href='#' data-no='" + arr[i].no + "'>" + arr[i].contents + "</a></td>" +        
				"<td class='listNickName'>" + arr[i].nicknm +"</td>" +
				"<td>" + arr[i].createdDate2 +"</td>" +			
				"<td class='delBtnList'>" + '<button id="deleteBtn" type="button" class="btn btn-default my-view">삭제</button> <input type="password" id="password" class="form-control" placeholder="암호"> ' + "</td>" +			
				"</tr>"; 
			} else {
				contents += "<tr>" +
				"<td id='no'>" + arr[i].no + "</td>" +
				"<td><a class='titleLink' href='#' data-no='" + arr[i].no + "'>" + arr[i].contents + "</a></td>" +        
				"<td class='listNickName'>" + arr[i].nicknm +"</td>" +
				"<td>" + arr[i].createdDate2 +"</td>" +			
				"<td class='delBtnList'>" + '<input type="password" id="password" class="form-control" placeholder="암호"> ' + "</td>" +			
				"</tr>"; 
			}
		}
		
		$("#board-Table tbody").html(contents)
		 
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