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
    <link rel="stylesheet" type="text/css" href="../css/makegroup.css">
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<style>
	.container {
	  width: 600px;
	}
	</style>
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
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
		         <button class="btn btn-default" data-target="#layerpop" data-toggle="modal">그룹추가</button><br/>
				<div class="modal fade" id="layerpop" >
  				<div class="modal-dialog">
    			<div class="modal-content">
     			 <!-- header -->
      			<div class="modal-header">
       		 	<!-- 닫기(x) 버튼 -->
        		<button type="button" class="close" data-dismiss="modal">×</button>
        		<!-- header title -->
        		<h4 class="modal-title">그룹생성</h4>
     			</div>
     			<!-- body -->
      			<div class="modal-body">
      			<label for="file">그룹이름</label><br> 
            	<input id="groupName" type="text" name="groupname" placeholder="그룹명을 입력하세요."><br>
				<label for="file">그룹이미지</label><br> 
				<input class="file" type="file" name="file"><br> 
				<label for="ex_group">그룹설명</label><br>
				<input type="text" name="ex_group" placeholder="그룹에 대한 설명을 입력해주세요">
      			</div>
      			<!-- Footer -->
      			<div class="modal-footer">
      	<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="add();">만들기</button>
      </div>
    </div>
  </div>
</div>
	         
		       </ul>  
		    </div>
	    </div>
	    </div>
	    <div class="my-group">
	     <ul id="member" class="member">
	       <li><a href="makeSc.jsp"><i class="group-img"><img src="../images/profile.png"></i><span>그룹1</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹2</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹3</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹4</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹5</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹6</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹7</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹8</span></a></li>
	       <li><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>그룹9</span></a></li>    
	       <li id=add><a href="#"><i class="group-img"><img src="../images/profile.png"></i><span>#groupName</span></a></li> 
	     </ul>
	    </div>	  	
	  </div>
	</section>
  <jsp:include page="/footer.jsp"></jsp:include>
   <script src="../js/main.js"></script>
   <script type="text/javascript">
   function add() {
	   $("#member").append($("#li"));
   }
   
   </script>
</body>
</html>
