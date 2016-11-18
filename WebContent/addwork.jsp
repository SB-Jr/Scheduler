<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="stylesheet/pagestyle.css" rel="stylesheet">
<link href="stylesheet/links.css" rel="stylesheet">
<link href="stylesheet/menu-position.css" rel="stylesheet">
<link href="stylesheet/addwork-style.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String user = (String)session.getAttribute("user");
		if(user==null){
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	%>
	
	<div class="menu">
		<a href="welcomeuser.jsp">Home</a>
		<a href="scheduled.jsp">Schedules</a>
		<b>Add Work</b>
		<a href="logout.jsp">Logout</a>
	</div>
	
	
	<div class="container">
    <div class="login">
      <h1>Add Work to your Scheduler</h1>
      <form method="post" action="loginvalidate.jsp">
        <p><input type="text" name="workname" placeholder="Workname"></p>
        <p><label>Type:</label><Select name="type" class="select">
        	<option value="pending">Pending</option>
        	<option value="testing">Testing</option>
        	<option value="deploy">Deploy</option>
        	<option value="done">Done</option>
        </Select></p>
        <p class="submit"><input type="submit" name="commit" value="Add Work"></p>
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