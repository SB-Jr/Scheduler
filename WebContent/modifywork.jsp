<%@page import="util.WorkOperations"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
		String user = (String)session.getAttribute("user");
	
		String work1 = request.getParameter("pending");
		String work2 = request.getParameter("testing");
		String work3 = request.getParameter("deploy");
		
		if(work1!=null){
			WorkOperations.upgradeWork(user, work1, "pending");;
		}
		else if(work2!=null){
			WorkOperations.upgradeWork(user,work2, "testing");
		}
		else{
			WorkOperations.upgradeWork(user,work3, "deploy");
		}
		
		request.getRequestDispatcher("scheduled.jsp").forward(request, response);
	%>
</body>
</html>