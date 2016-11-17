<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="stylesheet/pagestyle.css" rel="stylesheet">
<link href="stylesheet/links.css" rel="stylesheet">
<link href="stylesheet/menu-position.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>
<body>
	<%
		String user = (String)session.getAttribute("user");
		if(user==null){
			user="Shrijit";
		}
	%>
	<div class="welcome">
		<h1>Welcome <%= user %></h1>
	</div>
	<div class="menu">
		<a href="welcomeuser.jsp">Home</a>
		<a href="scheduled.jsp">Schedules</a>
		<a href="index.jsp">Logout</a>
	</div>
</body>
</html>