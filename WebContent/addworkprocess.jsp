<%@page import="util.UserOperations"%>
<%@page import="util.WorkOperations" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@page import="bean.WorkBean" %>
	<jsp:useBean id="bean" class="bean.WorkBean"/>
	<jsp:setProperty property="*" name="bean"/>
	
	<%
		String user = (String)session.getAttribute("user");
		bean.setUser(user);
		WorkOperations.addWork(bean);
		request.getRequestDispatcher("scheduled.jsp").forward(request, response);
	%>
</body>
</html>