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
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  </head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
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
	    <div class="my-group">
	     <ul class="member">
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹1</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹2</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹3</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹4</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹5</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹6</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹7</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹8</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹9</span></a></li>    
	     </ul>
	    </div>	  	
	  </div>
	</section>
  <jsp:include page="/footer.jsp"></jsp:include>
   <script src="../js/main.js"></script>
</body>
</html>
