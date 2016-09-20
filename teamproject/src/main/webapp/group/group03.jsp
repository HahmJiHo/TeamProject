<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<title>프로젝트-스케쥴</title>
<!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<link rel="stylesheet" type="text/css" href="../css/common_style.css">
<link rel="stylesheet" type="text/css" href="../css/group03.css">
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
<!--     <form>
    <input type="text" name="tex1" placeholder="검색어를 입력하세요"> 
    <input type="submit" value="검색">
    </form>
       <div>
          <ul>
            <li><a href="group01.jsp" class="active">그룹</a></li>
            <li><a href="group02.jsp">월간</a></li>
            <li><a href="group03.jsp">주간</a></li>
          </ul>
        </div>  -->

    
<table>
  <thead>
    <tr>
      <th></th>
      <th>
        <span class="day">1</span>
        <span class="long">Monday</span>
        <span class="short">Mon</span>
      </th>
      <th>
        <span class="day">2</span>
        <span class="long">Tuesday</span>
        <span class="short">Tue</span>
      </th>
      <th>
        <span class="day">3</span>
        <span class="long">Wendsday</span>
        <span class="short">We</span>
      </th>
      <th>
        <span class="day">4</span>
        <span class="long">Thursday</span>
        <span class="short">Thur</span>
      </th>
      <th>
        <span class="day active">5</span>
        <span class="long">Friday</span>
        <span class="short">Fri</span>
      </th>
      <th>
        <span class="day">6</span>
        <span class="long">Saturday</span>
        <span class="short">Sat</span>
      </th>
      <th>
        <span class="day">7</span>
        <span class="long">Sunday</span>
        <span class="short">Sun</span>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="hour" rowspan="4"><span>1:00</span></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="hour" rowspan="4"><span>2:00</span></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    
    <tr>
      <td class="hour" rowspan="4"><span>3:00</span></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="hour" rowspan="4"><span>4:00</span></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="hour" rowspan="4"><span>5:00</span></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="hour" rowspan="4"><span>6:00</span></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="hour" rowspan="4"><span>7:00</span></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td class="hour" rowspan="4"><span>8:00</span></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
        <tr>
      <td class="hour" rowspan="4"><span>9:00</span></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
        <tr>
      <td class="hour" rowspan="4"><span>10:00</span></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
    
    
    
    
    
     </div> 
     
     
     
     
     
     
   

</section>
<jsp:include page="/footer.jsp"></jsp:include>
<script src="../js/main.js"></script>
</body>
</html>


