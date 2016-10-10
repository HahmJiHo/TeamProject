$("#addBtn").click(function(e) { 
	var reply = {
			contents : $("#contents").val(),
			nicknm : $("#nicknm").html()
	}
	ajaxAddReply(reply)
});

$('#group-reply-btn').on('click', function(e) {
	$('#reply-modal').modal();
	$("#board-Table > ul").on('click', '#deleteBtn', function(e) {   
		var no = $(this).parent().prevAll("#no").text()
		ajaxDeleteReply(no)
		
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
		ajaxReplyList()
		$("#contents").val('')		
		$("#rePassword").val('')
	}, "json" )	
}

function ajaxDeleteReply(no) {
	$.getJSON(serverAddr +"/reply/delete.json",{
		no: no
	}, function(obj) {
		var result = obj.jsonResult
		if (result.state != "success") {
			console.log(result);
			alert("삭제 실패 입니다.")       
			return
		} 
		ajaxReplyList()
	})
	
}
