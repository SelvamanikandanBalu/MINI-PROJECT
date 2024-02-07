<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
 <head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<table border="1">
<tr>
<th>username</th>
<th>password</th>
</tr>
<%
Connection con=null;
Statement st=null;
ResultSet rs=null;
try{
	Class.forName("com.sql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/selva","root","Selvam@2004");
	st = con.createStatement();
	String str = "select * from login";
	rs= st.executeQuery(str);
	while(rs.next()) {
	%>
	<tr>
	<td><%= "rs.getString(1)" %></td>
	<td><%= "rs.getString(2)" %></td>
	</tr>
	<%
	 }
	} catch(Exception e){
		
	}
%>
</table>
</center>
</body>
</html>