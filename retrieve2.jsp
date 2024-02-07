<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("idnumber");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/selva","root","Selvam@2004");
	if(!con.isClosed())
	{
		PreparedStatement ps = con.prepareStatement("select * from login where uname='"+id+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			out.println(rs.getString("uname")+rs.getString("password"));
		}
		else{
			out.println("record not exist");		
		}
	}
}
catch(Exception e){
	out.println("the error is:"+e.getMessage());
}
%>
</body>
</html>