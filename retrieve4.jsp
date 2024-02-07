<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<div>
<h1>PLAYERS LIST</h1>
</div>
<table border="1">
<colgroup>
<col span=2 style= background-color:red>
<tr>
<th>username</th>
<th>password</th>
</tr>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/selva","root","Selvam@2004");
	if(!con.isClosed())
	{
		PreparedStatement ps = con.prepareStatement("select * from login");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
		%>
		<tr>
		<td><%=rs.getString("uname")%></td>
		<td><%=rs.getString("password")%></td>
		</tr>
		<%
		}
	}
}
catch(Exception e){
	out.println("the error is:"+e.getMessage());
}
%>
</table>
<div>
<button onclick="hideShow()">ADD PLAYER</button>
</div>
<div id=main class=main>
<form action=AddServlet method=post>
<label for=username>username</label>
<input type="text" name=username id=username placeholder="enter your username">
<br>
<label for=password>password</label>
<input type="text" name=password id=password placeholder="enter your password">
<br>
</form>
</div>
</center>
<script>
var div = document.getElementById('main');
var display = 0;

function hideShow() {
	if(display==1)
		{
		div.style.display = 'block';
		}
	else{
		div.style.display= 'none';
		display=1;
	}
}
</script>
</body>
</html>