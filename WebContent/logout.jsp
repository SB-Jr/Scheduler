<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="stylesheet/pagestyle.css" rel="stylesheet">
<link href="stylesheet/links.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1>Logging you out.....</h1>
	thanking you for using
	<%
		session.setAttribute("user", null);
	%>
	<meta http-equiv="Refresh" content="2;url=index.jsp">
	

</body>
</html>