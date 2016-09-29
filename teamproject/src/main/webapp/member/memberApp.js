
document.querySelector("#loginBtn").onclick = function (e) {
	location.href = "../auth/authApp.html"
}

document.querySelector("#logoutBtn").onclick = function (e) {
	location.href = "../auth/authApp.html"
}

function ajaxBoardList() {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function(result){        
		if (xhr.readyState != 4)
			return;

		if (xhr.status != 200) {
			alert("서버에 잘못 요청했습니다.")
			return;
		}
		// json 형식의 문자열을 해석하여 자바스크립트 객체로 만들기
		var result = JSON.parse(xhr.responseText)

		if (result.state != "success") {
			alert("서버에서 데이터를 가져오는데 실패하였습니다.")
			return 
		} 

		var contents = ""
			var arr = result.data
			for (var i in arr) {
				contents += "<tr>" +
				"<td>" + arr[i].no + "</td>" +
				"<td><a class='titleLink' href='#' data-no='" + arr[i].no + "'>" + arr[i].name + "</a></td>" +        
				"<td>" + arr[i].nicknm +"</td>" +
				"<td>" + arr[i].email + "</td>" +
				"</tr>";
			}
		console.log(result.data.nicknm)

		document.querySelector("#board-Table tbody").innerHTML = contents;

		// 태그 를 추가한후 제목에 대해 click 리스너를 추가한다.
		var aTags = document.querySelectorAll(".titleLink")
		for (var i = 0; i < aTags.length; i++) {
			aTags[i].onclick = function(event) {
				//alert(this.getAttribute("data-no"))
				window.location.href = "memberForm.html?no=" + this.getAttribute("data-no")
			}	
		}              
	}
	xhr.open("GET", "list.json", true)
	xhr.send()

}

function ajaxLoginUser() {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function(result) {        
		if (xhr.readyState != 4)
			return;

		if (xhr.status != 200) {
			alert("서버에 잘못 요청했습니다.")
			return;
		}
		// json 형식의 문자열을 해석하여 자바스크립트 객체로 만들기
		var result = JSON.parse(xhr.responseText)
		/*
            result 예 
            {
             state : "success" or "fail",
             date : 결과 데이터          
            }          
		 */
		if (result.state != "success") {
			var tags = document.querySelectorAll(".my-login")
			for (var i = 0; i < tags.length; i++) 
				tags[i].style.display = "none"
					return                        
		} 

		var tags = document.querySelectorAll(".my-logout")
		for (var i = 0; i < tags.length; i++) 
			tags[i].style.display = "none"

				document.querySelector("#userName").textContent = result.data.name
				console.log(result.data.name)
	}
	xhr.open("GET", "../auth/loginUser.json", true)
	xhr.send()

}