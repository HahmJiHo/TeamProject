$("#addBtn").click(function(e) { 
	var reply = {
			contents : $("#contents").val(),
			nicknm : $("#nicknm").html()	
	}
	ajaxAddReply(reply)
});


$("#updateBtn").click(function(e) {  
	var member = {
			name : $("#name").val(),
			nicknm : $("#nicknm").val(),
			email : $("#email").val(),
			password : $("#password").val(),
			no : $("#no").val()
	}
	ajaxUpdateReply(reply)
});


$("#board-Table").on('click', '#deleteBtn', function(e) {   
	ajaxDeleteReply($("#no").html(), $("#password").val())
});



function ajaxAddReply(reply) {
	$.post("../reply/add.json", reply, function(result) {
		if (result.state != "success") {
			console.log(result.data)
			alert("등록 실패 입니다.")       
			return
		} 
		window.location.href ="makeSc.html"
	}, "json" )	
}

function ajaxLoadReply(no) {
	
	$.getJSON("../reply/detail.json?no=" + no, function(result){
		if (result.state != "success") {
			alert("조회 실패 입니다.")       
			return
		} 
		// 서버에서 받은 데이터로 폼을 채운다
		$("#no").val(result.data.no);
		$("#name").val(result.data.name);
		$("#nicknm").val(result.data.nicknm);
		$("#email").val(result.data.email);

	})
}

function ajaxUpdateReply(reply) {	
	$.post("../reply/update.json", reply, function(result) {
		if (result.state != "success") {
			alert("변경 실패입니다.")
			return
		}
		window.location.href = "replyForm.html"
	}, "json")
}

function ajaxDeleteReply(no, password) {
	$.getJSON("../reply/delete.json",{
		no: no,
		password : password
	}, function(result){
		if (result.state != "success") {
			console.log(result);
			alert("삭제 실패 입니다.")       
			return
		} 
		location.href = "makeSc.html"    		
	})		
}
