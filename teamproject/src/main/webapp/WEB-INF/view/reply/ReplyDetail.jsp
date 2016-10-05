<%@page import="example.vo.Reply"%>
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
	<c:choose>
	 <c:when test="${empty reply}">
	   <p>해당 게시물이 존재하지 않습니다.</p>
	 </c:when>
	<c:otherwise>
		<h1>게시물 상세 조회2</h1>
			<form action='update.do' method='post'>
				<input type='hidden' name='no' value='${reply.no}'>	  
	    <table>
	       <thead>
	         <tr>
	           <td style="border-right:1px solid #444">번호 : ${reply.no}</td>        
	           <td style="border-right:1px solid #444">제목 : <input type='text' name='title' value='${reply.title}'></td>        
	           <td style="border-right:1px solid #444">작성자 : ${(empty reply.writer) ? "---" : reply.Writer}</td>
	           <td style="border-right:1px solid #444">등록일 : ${reply.createdDate}</td>
	           <td>조회수 : ${reply.viewCount}</td>
	         </tr>
	       </thead>
	       <tbody>
	        <tr>
	          <td colspan='5'><textarea style="width:100%;" rows='10' name='contents'>${reply.contents}</textarea></td>
	        </tr>
	        <tr>
	          <td colspan='5'>암호 : <input type='password' name='password'></td>
	        </tr>
	       </tbody>
	      </table>
	
				<button type='submit'>변경</button><br>
				<ul>
				 <li><a href='delete.do?no=${reply.no}'>삭제</a></li>
				 <li><a href='list.do'>목록</a></li>
				</ul>
			</form>
			</c:otherwise>
		</c:choose>
  <jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>

      
      