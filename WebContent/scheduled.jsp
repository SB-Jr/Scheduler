<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="stylesheet/pagestyle.css" rel="stylesheet">
<link href="stylesheet/links.css" rel="stylesheet">
<link href="stylesheet/menu-position.css" rel="stylesheet">
<link href="stylesheet/schedule-style.css" rel="stylesheet">
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
		<b>Schedules</b>
		<a href="addwork.jsp">Add Work</a>
		<a href="logout.jsp">Logout</a>
	</div>
	
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/scheduler"
     user="root"  password="shrijit08"/>

	<div class="pending">
		<center><p><h2>Pending</h2></center>
		<sql:query dataSource="${snapshot}" var="result">
   			select * from work where userid="<%=user %>" and workstatus="pending";
		</sql:query>
		<select name="pending" size="10">
			<c:forEach var="row" items="${result.rows}">
				<option><c:out value="${row.workname}"/></option>
			</c:forEach>
		</select>
		</p>		
	</div>
	
	<div class="testing">
		<center><p><h2>Testing</h2></center>
		<sql:query dataSource="${snapshot}" var="result">
   			select * from work where userid="<%=user %>"  and workstatus="testing";
		</sql:query>
		<select name="testing" size="10">
			<c:forEach var="row" items="${result.rows}">
				<option><c:out value="${row.workname}"/></option>
			</c:forEach>
		</select>		
		</p>
	</div>
	
	<div class="deploy">
		<center><p><h2>Deploy</h2></center>
		<sql:query dataSource="${snapshot}" var="result">
   			select * from work where userid="<%=user %>"  and workstatus="deploy";
		</sql:query>
		<select name="deploy" size="10">
			<c:forEach var="row" items="${result.rows}">
				<option><c:out value="${row.workname}"/></option>
			</c:forEach>
		</select>
		</p>		
	</div>
	
	<div class="done">
		<center><p><h2>Done</h2></center>
		<sql:query dataSource="${snapshot}" var="result">
   			select * from work where userid="<%=user %>"  and workstatus="done";
		</sql:query>
		<select name="done" size="10">
			<c:forEach var="row" items="${result.rows}">
				<option><c:out value="${row.workname}"/></option>
			</c:forEach>
		</select>
		</p>		
	</div>
	
</body>
</html>