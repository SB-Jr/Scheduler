<%@page import="util.ValidateUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@page import="bean.LoginBean" %>
	
	<jsp:useBean id="bean" class="bean.LoginBean"/>
	<jsp:setProperty property="*" name="bean"/>
	
	<%
		bean.setUsername(request.getParameter("username"));
		bean.setPassword(request.getParameter("password"));
		boolean status = ValidateUser.validate(bean);
		if(status){
			session.setAttribute("user", bean.getUsername());
			RequestDispatcher rd = request.getRequestDispatcher("welcomeuser.jsp");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp?error=\"Invalid Credentials\"");
			rd.forward(request, response);
		}
	%>

</body>
</html>