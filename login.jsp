<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel=stylesheet href=style.css>
</head>
<body>
<div class=two>
<h1>DAS SPORTS CLUB</h1>
</div>
<div class=five>
<h1>LOGIN PAGE</h1>
</div>
<div class=three>
<div class=one>
<form action=LoginServlet method=post>
<h2>USERNAME</h2>
<input class= uname type=text name=username placeholder="enter username">
<h2>PASSWORD</h2>
<input class= pass type=text name=password placeholder="enter password">
<br>
<input class= login type=submit class="login" value=login>
</form>
<p> if not user <a href=http://localhost:8089/LoginPage/login.jsp>register</a></p>
</div>
</div>
</body>
<div class=four>
<h3>thank you for visiting our site</h3>
</div>
</html>