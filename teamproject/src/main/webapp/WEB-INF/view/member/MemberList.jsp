<%@page import="java.util.List"%>
<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>게시물 목록 조회</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	
	<h1>게시물 목록 조회2</h1>
	<p>
		<a href='form.html'>새글</a>
	</p>
	<div>
	 <table>
	   <c:forEach items="${list}" var="member"> 
      <tr>
			 <td>${member.no}</td>
			 <td><a href='detail.do?no=${member.no}'>${member.title}</a></td>
       <td>${(empty member.writer) ? "---" : member.Writer}</td>
       <td>${member.createdDate}</td>
       <td>${member.viewCount}</td>
     </tr>    
    </c:forEach>
    </table> 
   </div>
  <jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
