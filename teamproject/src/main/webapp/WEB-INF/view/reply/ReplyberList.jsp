<%@page import="example.vo.Reply"%>
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
	   <c:forEach items="${list}" var="reply"> 
      <tr>
			 <td>${reply.no}</td>
			 <td><a href='detail.do?no=${reply.no}'>${reply.title}</a></td>
       <td>${(empty reply.writer) ? "---" : reply.Writer}</td>
       <td>${reply.createdDate}</td>
       <td>${reply.viewCount}</td>
     </tr>    
    </c:forEach>
    </table> 
   </div>
  <jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
