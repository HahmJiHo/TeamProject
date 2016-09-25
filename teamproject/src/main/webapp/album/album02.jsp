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
    
 <table width="100%">
  <tr>
    <th align="left" scope="row">      
    <input type="text" name="tex1" placeholder="검색어를 입력하세요"> 
    <input type="submit" value="검색"></th>
    <td>&nbsp;</td>
    <td align="right">
	    <input type="submit" value="다른그룹보기" onClick="location.href='album01.jsp'">
	    <input type="submit" value="앨범추가" onClick="location.href='#'" >
      <input type="submit" value="수정하기" onClick="location.href='#'">
    </td>
  </tr>   
</table> 
	  
	  
<table width="100%" border="1">
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th rowspan="5" scope="row">&nbsp;</th>
    <td align="center"><img src="../images/folder.png" width="200" height="177" /></td>
    <td align="center">&nbsp;</td>
    <td align="center"><a href="/teamproject/album/album03.jsp"><img src="../images/folder.png" alt="" width="200" height="177" /></a></td>
    <td align="center">&nbsp;</td>
    <td align="center"><a href="/teamproject/album/album03.jsp"><img src="../images/folder.png" alt="" width="200" height="177" /></a></td>
  </tr>
  <tr>
    <td align="center">2016-01-08 강남 놀란 치킨</td>
    <td align="center">&nbsp;</td>
    <td align="center">2016-01-08 강남 놀란 치킨</td>
    <td align="center">&nbsp;</td>
    <td align="center">2016-01-08 강남 놀란 치킨</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center"><a href="/teamproject/album/album03.jsp"><img src="../images/folder.png" alt="" width="200" height="177" /></a></td>
    <td align="center">&nbsp;</td>
    <td align="center"><a href="/teamproject/album/album03.jsp"><img src="../images/folder.png" alt="" width="200" height="177" /></a></td>
    <td align="center">&nbsp;</td>
    <td align="center"><a href="/teamproject/album/album03.jsp"><img src="../images/folder.png" alt="" width="200" height="177" /></a></td>
  </tr>
  <tr>
    <td align="center">2016-01-08 강남 놀란 치킨</td>
    <td align="center">&nbsp;</td>
    <td align="center">2016-01-08 강남 놀란 치킨</td>
    <td align="center">&nbsp;</td>
    <td align="center">2016-01-08 강남 놀란 치킨</td>
  </tr>
</table>
  
	  </div>	  	
	</section>
  <jsp:include page="/footer.jsp"></jsp:include>
   <script src="../js/main.js"></script>
</body>
</html>
