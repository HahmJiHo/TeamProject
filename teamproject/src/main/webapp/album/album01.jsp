<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
   <meta charset="utf-8">
    <title>그룹앨범</title>
    <!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="../css/common_style.css" >
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  </head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<section>
		<div class="section-wrap">
	    <h2>OOO 님의 그룹 입니다.</h2>
    <br> <br> <br> <br>  
    
 <table width="100%" border="1">
  <tr>
    <th align="left" scope="row">      
    <input type="text" name="tex1" placeholder="검색어를 입력하세요"> 
    <input type="submit" value="검색"></th>
    <td>&nbsp;</td>
    <td align="right">
      <input type="submit" value="그룹추가" onClick="location.href='#'"> 
      <input type="submit" value="수정하기" onClick="location.href='#'"></td>
  </tr>   
</table>  
    
    
<table width="100%" border="1">
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th align="center" scope="row"><a href="/teamproject/album/album02.jsp"><img src="../images/group.jpg" alt="" width="400" height="250" /></a></th>
    <td align="center">&nbsp;</td>
    <td align="center"><a href="/teamproject/album/album02.jsp"><img src="../images/group.jpg" alt="" width="400" height="250" /></a></td>
  </tr>
  <tr>
    <th align="center" scope="row">그룹1</th>
    <td align="center">&nbsp;</td>
    <td align="center"><strong>그룹2</strong></td>
  </tr>
  <tr>
    <th align="center" scope="row">&nbsp;</th>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <th align="center" scope="row"><a href="/teamproject/album/album02.jsp"><img src="../images/group.jpg" alt="" width="400" height="250" /></a></th>
    <td align="center">&nbsp;</td>
    <td align="center"><a href="/teamproject/album/album02.jsp"><img src="../images/group.jpg" alt="" width="400" height="250" /></a></td>
  </tr>
  <tr>
    <th align="center" scope="row">그룹3</th>
    <td align="center">&nbsp;</td>
    <td align="center"><strong>그룹4</strong></td>
  </tr>
  <tr>
    <th align="center" scope="row">&nbsp;</th>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <th align="center" scope="row"><a href="/teamproject/album/album02.jsp"><img src="../images/group.jpg" alt="" width="400" height="250" /></a></th>
    <td align="center">&nbsp;</td>
    <td align="center"><a href="/teamproject/album/album02.jsp"><img src="../images/group.jpg" alt="" width="400" height="250" /></a></td>
  </tr>
  <tr>
    <th align="center" scope="row">그룹5</th>
    <td align="center">&nbsp;</td>
    <td align="center"><strong>그룹6</strong></td>
  </tr>
</table>
	    
	  <br>  <br> <br> <br> <br> 
	    
	    
	    
	    
	  </div>	  	
	</section>
  <jsp:include page="/footer.jsp"></jsp:include>
   <script src="../js/main.js"></script>
</body>
</html>
