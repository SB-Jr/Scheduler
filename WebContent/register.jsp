<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="stylesheet/pagestyle.css" rel="stylesheet">
<link href="stylesheet/login-style.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
    <div class="login">
      <h1>Register to Scheduler</h1>
      <form method="post" action="registeruser.jsp">
        <p><input type="text" name="username" placeholder="Username or Email"></p>
        <p><input type="password" name="password" placeholder="Password"></p>
        <p><input type="password" name="repassword" placeholder="Password"></p>
        <p class="submit"><input type="submit" name="commit" value="Register"></p>
      </form>
    </div>
  </div>
  
  <%
		if(request.getParameter("error")!=null){
			String error = request.getParameter("error");
			%>
			<center><p style="color: red"><%= error %><p></center>
		<% }
	%>
</body>
</html>