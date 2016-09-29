
<%@ page language="java" 
  contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String email = (String) request.getAttribute("email");
	String checked = (String) request.getAttribute("checked");
%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<style>
header { width: 100%; }
.header-wrap { margin: 0 auto; text-align: center; }
.login-input { height: 30px; margin-bottom: 20px; }
.login ul li span { display:inline-block; width: 50px; text-align: left; }

</style>
<body>
	<header>
		<div class="header-wrap">
		<h1 style="font-size: 50px;">로그인</h1>
			<div class="login">
				<form action='login.do' method='post'>
					<ul>
						<li><span>이메일 : </span><input type='text' name='email' class="login-input"
							placeholder='이메일을 입력하세요' size='40' value='${email}'></li>
						<li><span>암 호 : </span><input type='password' name='password' size='40'
							class="login-input" placeholder='암호를 입력하세요'></li>
					</ul>
					<ul class="aaa">
						<li><input type='checkbox' name='saveEmail' ${checked}>이메일저장</li>
						<li><button>로그인</button></li>
					</ul>
				</form>
			</div>
		</div>
	</header>
</body>
</html>
