
document.querySelector("#loginBtn").addEventListener("click", function(e) { 
	var user = {
			email: document.querySelector("#email").value,
			password: document.querySelector("#password").value,
			saveEmail: document.querySelector("#saveEmail").checked 
	}

	ajaxLogin(user)
});
function ajaxLogin(user) {

	ajax({
		url :"login.json",
		method : "POST",
		dataType : "json",
		data : user,
		success : function(result) {
			if (result.state != "success") {
				alert("로그인 실패 입니다.\n 이메일 또는 암호를 확인하세요.")       
				return
			} 
			window.location.href = "../board/boardApp.html"		
		},
		error : function(msg) {
			alert(msg)
		}
	})

}

function ajaxLogout(user) {
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function(result) {        
		if (xhr.readyState != 4)
			return;

		if (xhr.status != 200) {
			alert("서버 요청 오류입니다.")
			return;
		}
		var result = JSON.parse(xhr.responseText)
		if (result.state != "success")
			alert("로그아웃 실패 입니다.")

	}
	xhr.open("POST", "logout.json", true)
	xhr.send()


}

function init() {
	var cookieMap = cookieToObject()

	// if ("eamil" in cookieMap) // 쿠키맵 객체에 이메일이라는 이름의 프로퍼티가 있는가
	if (cookieMap["email"]) { // 쿠키맵 객체에 이름으로 저장된 값이 있는가?
		document.querySelector("#email").value = cookieMap["email"]
		document.querySelector("#saveEmail").checked = true;
	}

}

function cookieToObject() {
	var cookies = document.cookie.split(";")
	var obj = {}
	if (cookies.length == 0)
		return obj;
	cookies.forEach(function(data) {
		var cookie = data.trim().split("=")      
		obj[cookie[0]] = cookie[1].replace(/\"/gi,"") 
	})
	return obj
}