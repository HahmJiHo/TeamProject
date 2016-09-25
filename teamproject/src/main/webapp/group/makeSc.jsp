<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
   <meta charset="utf-8">
    <title>프로젝트-스케쥴</title>
    <!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="../css/common_style.css" >
    <link rel="stylesheet" type="text/css" href="../css/makeCal.css" >
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type='text/javascript'  src="../js/main.js"></script>
       
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  </head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<section>
		<div class="section-wrap">
		  <div class="make-top">
		    <div class="make-text">
		     <h2>OOO 님의 일정만들기.</h2>
	  	   <p>일정을 만들 그룹을 선택해 주세요.</p>
		    </div>
		    <div class="my-info">
		       <ul>
		         <li class="my-profile">My 이미지</li> 
		         <li class="add-group"><a href="#">그룹 추가</a></li>
		       </ul>  
		    </div>
	    </div>
	    <div class="artice" style="float: left;">
	     <jsp:include page="calendar.jsp"></jsp:include>
	     </div>
	     <div class="aside" style="float: left;">
	       <ul>
	         <li><span class="makesc-member"></span>회원1</li>
	         <li><span class="makesc-member"></span>회원1</li>
	         <li><span class="makesc-member"></span>회원1</li>
	         <li><span class="makesc-member"></span>회원1</li>
	       </ul>
	     </div>
	  </div>
	  <div class="reply">
	  <form name="writeForm" id="writeForm" action="js/jso.json">
	  <div class="reply-contents">	  
	     <div class="reply-box">
           <ul></ul>
        </div> 
		    <div class="write-box">           
	         <textarea name="reply" id="reply-area" class="review-replay" placeholder="로그인 후에 등록됩니다."></textarea>
	         <div class="write-btn">
	           <input type="button" value="등록" class="reply-btn" name="reply-btn">
	         </div>
	          <p class="textcomment">최대 <span class="byte-count"><em>0</em></span>/ 200bytes (최대 한글 100자, 영문200자)</p>                           
	       </div>
       </div>
     </form>
	  </div>
	</section>
  <jsp:include page="../footer.jsp"></jsp:include>
   <script type='text/javascript' src='../js/cal_custom.js'></script>
</body>
</html>
