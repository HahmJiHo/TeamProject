$("#addBtn").click(function(e) { 
	var reply = {
			contents : $("#contents").val(),
			nicknm : $("#nicknm").html(),
			password : $("#rePassword").val()
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

$('#group-reply-btn').on('click', function(e) {
	$('#reply-modal').modal();
	$("#board-Table > tbody").on('click', '#deleteBtn', function(e) {   
		ajaxDeleteReply($(this).parent().prevAll("#no").text(), $(this).next("#password").val())
	});

		
})


function ajaxAddReply(reply) {
	$.post(serverAddr +"/reply/add.json", reply,  function(obj) {
		var result = obj.jsonResult
		if (result.state != "success") {
			console.log(result.data)
			alert("등록 실패 입니다.")       
			return
		} 
		window.location.href ="makeSc.html"
	}, "json" )	
}

function ajaxLoadReply(no) {
	
	$.getJSON(serverAddr +"/reply/detail.json?no=" + no,  function(obj) {
		var result = obj.jsonResult
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
	$.post(serverAddr +"/reply/update.json", reply,  function(obj) {
		var result = obj.jsonResult
		if (result.state != "success") {
			alert("변경 실패입니다.")
			return
		}
		window.location.href = "replyForm.html"
	}, "json")
}

function ajaxDeleteReply(no, password) {
	$.getJSON(serverAddr +"/reply/delete.json",{
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
