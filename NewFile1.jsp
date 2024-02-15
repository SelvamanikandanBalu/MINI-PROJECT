<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
margin: 0%;
padding: 0%;
}
.eight{
margin-top: 50px;
text-align:center;
}
.seven{
margin-top: 50px;
text-align:center;
}
.six{
margin-top: 50px;
text-align:center;
}
.fi{
margin-top: 50px;
text-align:center;
}
button:hover{
cursor: pointer;
}
.nine,.ten{
background-color: yellow;
display: inline-block;
margin-right: 120px;
margin-left: 120px;
padding-left: 20px;
padding-right: 20px;
width: 400px;
height: 80px;
}
button{
background-color: yellow;
display: inline-block;
margin-right: 120px;
margin-left: 120px;
padding-left: 20px;
padding-right: 20px;
width: 150px;
height: 80px;
}
h1{
text-align:center;
background-color: yellow;
}
.one{
margin: 20px;
text-align: right;
}
.three{
background-color: orange;
margin-right: 30px;
margin-left: 30px;
padding-left:20px;
padding-right:20px;
border-radius: 10%;
}
.four{
background-color: orange;
margin-right: 30px;
margin-left: 30px;
padding-left:20px;
padding-right:20px;
border-radius: 10%;
}
body{
background-image: url("ipl.jpg");
background-repeat: no-repeat;
background-positon: center;
background-size: cover;
}
</style>
</head>
<body>
<h1>SPORTS MANAGEMENT SYSTEM</h1>
<div class = one>
<a class=three href=NewFile.jsp>HOME</a>
<a class=four href=#>LOGOUT</a>
</div>
<div class=fi>
<a href=welcome.jsp><button>SPORTS</button></a>
<a href=#><button>INFRASTRUCTURE</button></a>
<a href=#><button>GUESTS</button></a>
</div>
<div class=six>
<a href=#><button>STAFF</button></a>
<a href=#><button>PLAYERS</button></a>
<a href=#><button>NOTIFICATION</button></a>
</div>
<div class=seven>
<a href=#><button>SPONSORS</button></a>
<a href=#><button>PRIZES</button></a>
<a href=chart.jsp><button>ANALYSIS(PLAYER)</button></a>
</div>
<div class=eight>
<a href=#><button class=nine>ANALYSIS(PRIZE)</button></a>
<a href=#><button class=ten>ANALYSIS(REVENUE)</button></a>
</div>
</body>
</html>