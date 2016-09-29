
document.querySelector("#addBtn").addEventListener("click", function(e) { 
	var member = {
			name : document.querySelector("#name").value,
			nicknm : document.querySelector("#nicknm").value,
			email : document.querySelector("#email").value,
			password : document.querySelector("#password").value
	}
	ajaxAddBoard(member)
});


document.querySelector("#updateBtn").addEventListener("click", function(e) {  
	var member = {
			name : document.querySelector("#name").value,
			nicknm : document.querySelector("#nicknm").value,
			email : document.querySelector("#email").value,
			password : document.querySelector("#password").value,
			no : document.querySelector("#no").value
	}
	ajaxUpdateBoard(member)
});

document.querySelector("#deleteBtn").addEventListener("click", function(e) {  
	ajaxDeleteBoard(document.querySelector("#no").value)
});



function ajaxAddBoard(member) {
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
			console.log(result.data)
			alert("등록 실패 입니다.")
		
			return
		} 
		
		window.location.href ="memberApp.html"

	}
	xhr.open("POST", "add.json", true)
	// POST 는 헤더를 추가 해줘여함..
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

	// post 요청은 서버에 데이터를 보낼때 파라미터를 보낸다
	var params = "name=" + encodeURIComponent(member.name) + 
	"&nicknm=" + encodeURIComponent(member.nicknm) + 
	"&email=" + member.email + 
	"&password=" + encodeURIComponent(member.password)

	// 자바스크립트 AJAX 에서는 직접 URL인코딩을 해야 한다. 
	xhr.send(params)
	
}

function ajaxLoadBoard(no) {
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
			console.log(result.data)
			alert("등록 실패 입니다.")       
			return
		} 
		
		// 서버에서 받은 데이터로 폼을 채운다
		console.log(result.data.email)
		document.querySelector("#no").value = result.data.no;
		document.querySelector("#name").value = result.data.name;
		document.querySelector("#nicknm").value = result.data.nicknm;
		document.querySelector("#email").value = result.data.email;

	}
	xhr.open("GET", "detail.json?no=" + no, true)
	xhr.send()

}

function ajaxUpdateBoard(member) {
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
			console.log(result.data.no)
			console.log(result.data.password)
			alert("변경 실패 입니다.")       
			return
		} 

		window.location.href ="memberApp.html"

	}
	xhr.open("POST", "update.json", true)
	// POST 는 헤더를 추가 해줘여함..
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	// post 요청은 서버에 데이터를 보낼때 파라미터를 보낸다
	var params = "name=" + encodeURIComponent(member.name) + 
	"&nicknm=" + encodeURIComponent(member.nicknm) + 
	"&email=" + encodeURIComponent(member.email) +
	"&password=" + encodeURIComponent(member.password) +
	"&no=" + member.no
	// 자바스크립트 AJAX 에서는 직접 URL인코딩을 해야 한다. 
	xhr.send(params)

}

function ajaxDeleteBoard(no) {
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
			console.log(result.data)
			alert("삭제 실패 입니다.")       
			return
		} 
		location.href = "memberApp.html"    
	}
	xhr.open("GET", "delete.json?no=" + no, true)
	xhr.send()
}