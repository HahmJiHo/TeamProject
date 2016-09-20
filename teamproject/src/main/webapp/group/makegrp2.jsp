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
    <link rel="stylesheet" type="text/css" href="../css/makegroup2.css">
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  </head>
  <body>
   <jsp:include page="/header.jsp"></jsp:include>
   <section>
      <div class="section-wrap" >
       <h2>OOO 님의 그룹 관리</h2>
     </div>   
       <div class="inviteMember">
        <h2>New Group 초대</h2>
         <div class="button">
          <button class="sendEmail" type="submit" onClick="location.href='makegrp2.jsp'">이메일보내기</button>
          <button class="sendLink" type="submit" onClick="location.href='makegrp3.jsp'">링크전송</button>
         </div>
         <div class="input">
         <input class="email" type="email" placeholder="이메일을 입력해주세요."><br>
         <p>전하고 싶은 말(선택 사항)</p>
         <input class="message" type="text" placeholder="내용을 입력해주세요."><br>
         </div>
         <div class="button2">
		  <button class="cancel" type="reset">cancel</button>
		  <button class="send" type="submit">send</button>
	    </div>        
       </div>
		<div class="button3">
		<button class="1" onClick="location.href='makegrp.jsp'">1</button>
       	<button class="2" onClick="location.href='makegrp2.jsp'">2</button>
       	</div>
   </section>
  <jsp:include page="/footer.jsp"></jsp:include>
   <script src="../js/main.js"></script>
</body>
</html>