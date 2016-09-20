<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>프로젝트-스케쥴</title>
<style>
/* #group {
	background-color: rgb(118, 222, 255);
	font-size: 2rem;
}

ol li {
	font-size: 1rem;
	color: navy;
} */
</style>

<!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<link rel="stylesheet" type="text/css" href="../css/common_style.css">
<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
</head>
<jsp:include page="/header.jsp"></jsp:include>
<body>
<section>

	<div class="section-wrap">
	<div id="group">
		<b>OOO 님의 그룹 일정보기</b>
	</div>
	<br>
	<p style="font-size: 15px; font-weight: bold;">OOO 님의 그룹</p>
	
	
	
<table width="100%">
  <tr>
    <td width="49%" rowspan="3" scope="row"><img src="../images/weather.png" width="100%"/></td>
    <td width="51%" height="18">
	    길찾기<br>
	    <input type="text" name="tex1" placeholder="분당 야탑역"> >
	    <input type="text" name="tex1" placeholder="강남비트학원">
    </td>
  </tr>
  <tr>
    <td>
	    <input type="submit" value="대중교통">
	     <input type="submit" value="자동차">
	    <input type="submit" value="자전거">
	    <input type="submit" value="도보"><br>
	    <input type="submit" value="추천">
	     <input type="submit" value="버스">
	    <input type="submit" value="지하철">
	    <input type="submit" value="버스+지하철"><br>
    </td>
  </tr>
  <tr>
    <td><img src="../images/map.jpg" width="100%"/></td>
  </tr>
  <tr>
    <th colspan="2" align="left" scope="row">
    <input type="submit" value="대중교통">
     <input type="submit" value="자동차">
    <input type="submit" value="자전거"><br><br>
    </th>
  </tr>
  <tr>
    <th scope="row">
    <img src="../images/img.jpg" width="313" height="273" />
    </th>
    <td><img src="../images/img.jpg" alt="" width="313" height="273" /></td>
  </tr>
</table>

</div>
</section>
<jsp:include page="/footer.jsp"></jsp:include>
<script src="../js/main.js"></script>
</body>
</html>