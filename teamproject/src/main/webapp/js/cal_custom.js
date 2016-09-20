$(function () {
	$('.review-replay').keydown(function() {
		  var textLength = $('#reply-area').val().length;
		  var byteCount = 0;
		  var maxCount = 200;
		  for (i = 0; i < textLength; i++) {
		   var charTemp = $('#reply-area').val().charAt(i);
		   if (escape(charTemp).length > 4) {
		    byteCount += 2; // 한글
		   } else {
		    byteCount += 1; // 영어
		   }
		  }
		  if (byteCount > maxCount) {
		    $('#reply-area').val($('#reply-area').val().substr(0,textLength -1));    	   
		  }
		  $('.byte-count').text(byteCount);
	});
	
	$(".reply-btn").click(function() {
	 	var emptyReplyArea = $(".review-replay").val()
	 	,  $appendReply = $(".reply-box > ul");
	 																
    	$('.review-replay').val('');	
		if (emptyReplyArea != "") {			  
		    var now = new Date();
		 	var nowAll = now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds() + " ";
			var replayArea = emptyReplyArea;	    	
			$appendReply.prepend('<li><span class="text">' + replayArea + '</span> <span class="reply-write">kkk</span><span class="reply-record">' + nowAll + '</span></li>');
   			var rows = $('.reply-box > ul').children('li');
	  		for (var i = 0; i < rows.length; i++ ) {
		  	  var row = rows[i]						  			  	
			  return false;		  
			}			 	 	   
		 } else if ( emptyReplyArea == "" ) {
		 	 alert("내용을  입력하세요");		 	 
		 } 	 	
    });	

	
})


