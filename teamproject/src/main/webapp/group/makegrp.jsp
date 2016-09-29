<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>프로젝트-스케쥴</title>
<!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<link rel="stylesheet" type="text/css" href="../css/common_style.css">
<link rel="stylesheet" type="text/css" href="../css/makegroup.css">
<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<section>
		<div class="section-wrap">
			<h2>OOO 님의 그룹 관리</h2>
				<div class="new-group-box">
					<h2>New Group</h2>
					<label for="groupname">Enter a name for this group</label><br>
					<input type="text" name="groupname" placeholder="그룹명을 입력하세요."><br>
					<label for="file">Group Image</label><br> 
					<input type="file" name="file"><br> 
					<label for="ex_group">Group Description</label><br>
					<input type="text" name="ex_group" placeholder="그룹에 대한 설명을 입력해주세요">
					<div class="button">
						<button class="cancel" type="reset">cancel</button>
						<button class="next" onClick="location.href='makegrp2.jsp'">next</button>
					</div>
				</div>
		</div>
		<div class="button2">
		<button class="1" onClick="location.href='makegrp.jsp'">1</button>
       	<button class="2" onClick="location.href='makegrp2.jsp'">2</button>
       	</div>
	</section>
	<jsp:include page="/footer.jsp"></jsp:include>
	<script src="../js/main.js"></script>
</body>
</html>