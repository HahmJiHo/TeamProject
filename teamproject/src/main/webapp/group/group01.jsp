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
<link rel="stylesheet" type="text/css" href="../css/group01.css">
<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<meta name="viewport"
       content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<jsp:include page="/header.jsp"></jsp:include>
</head>

<section>
  <div class="section-wrap">
    <h2>OOO 님의 그룹 입니다.</h2>
    <br> <br> <br> 
    <div>
	    <input type="text" name="tex1" placeholder="검색어를 입력하세요"> 
	    <input type="submit" value="검색">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="submit" value="그룹" onClick="location.href='group01.jsp'">
	    <input type="submit" value="월간달력" onClick="location.href='group02.jsp'">
	    <input type="submit" value="주간달력" onClick="location.href='group03.jsp'">
    </div> 
    <br> <br> <br> <br>    

            
<table width="100%" border="0">
  <tr>
    <td class="hover effect4" width="340" rowspan="2"><img class="sum" src="../images/group.jpg" alt="" width="400" height="250"></td>
    <td class="font" height="48" colspan="2" align="center">9월 2일 강남역 놀란 치킨 </td>
    <td width="68"><input type="submit" value="일정보기" onClick="'#'"></td>
  </tr>
  <tr>
    <td width="74" height="115" align="center"><input type="submit" value="<" onClick="'#'"></td>
    <td class="font2" width="408" align="center"> <h1> D-Day15</h1> </td>
    <td align="center"><input type="submit" value=">" onClick="'#'"></td>
  </tr>
</table>
     

            
<table width="100%" border="0">
  <tr>
    <td class="hover effect4" width="340" rowspan="2"><img src="../images/group.jpg" alt="" width="400" height="250"></td>
    <td class="font" height="48" colspan="2" align="center">9월 2일 신논현역 놀란 치킨 </td>
    <td width="68"><input type="submit" value="일정보기" onClick="'#'"></td>
  </tr>
  <tr>
    <td width="74" height="115" align="center"><input type="submit" value="<" onClick="'#'"></td>
    <td class="font2" width="408" align="center"> <h1> D-Day15</h1> </td>
    <td align="center"><input type="submit" value=">" onClick="'#'"></td>
  </tr>
</table>   
     
     
     
            
<table width="100%" border="0">
  <tr>
    <td class="hover effect4" width="340" rowspan="2"><img src="../images/group.jpg" alt="" width="400" height="250"></td>
    <td class="font" height="48" colspan="2" align="center">9월 2일 신논현역 놀란 치킨 </td>
    <td width="68"><input type="submit" value="일정보기" onClick="'#'"></td>
  </tr>
  <tr>
    <td width="74" height="115" align="center"><input type="submit" value="<" onClick="'#'"></td>
    <td class="font2" width="408" align="center"> <h1> D-Day15</h1> </td>
    <td align="center"><input type="submit" value=">" onClick="'#'"></td>
  </tr>
</table>   
       
     
     
     
     
<!--      <div class="group">
        <ul>
           <li>
             <div>
               <img src="../images/group.jpg" alt="" width="400" height="250">
               <p class="place"> 9월 2일 강남역 놀란 치킨</p>
               <p class="day">D-Day15</p>
              </div>
           </li>
           
           <li>
             <div>
               <img src="../images/group.jpg" alt="" width="400" height="250">
               <p class="place"> 9월 2일 강남역 놀란 치킨</p>
               <p class="day">D-Day15</p>
              </div>
           </li>
        </ul>
    </div> -->
    
    
    
     
       
    
<%--     <div class="hover effect4">
    <span>그룹1</span>
    
   </div>
   
    <div>
      <ul>
        <li><input type="submit" value="<" onClick="'#'">  </li>
        <li> 9월 2일 강남역 놀란 치킨 </li>
        <li> D-Day15 </li>
        <li><input type="submit" value=">" onClick="'#'"></li>
      </ul> 

     </div>   --%> 
    
     
   
</div> 
</section>



<jsp:include page="/footer.jsp"></jsp:include>
<script src="../js/main.js"></script>
</body>
</html>


