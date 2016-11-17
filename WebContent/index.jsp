<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style> 
		body {font-family: 'Lato', sans-serif;} 
	</style>
	<script src="jquery-3.1.1.min.js"></script>
	<script src="typed.js"></script>
	<link href="stylesheet/pagestyle.css" rel="stylesheet">
	<link href="stylesheet/typed-css.css" rel="stylesheet">
	<link href="stylesheet/index-style.css" rel="stylesheet">
	<link href="stylesheet/links.css" rel="stylesheet">
	<script>
	    $(function(){
	        $(".element").typed({
	            strings: ["We help you <strong>manage</strong> your work better.", ".",".",".","Scheduler helps you to <strong>schedule</strong> your work better.", ".",".","."],
	            contentType: 'html',
	            typeSpeed: 30,
	            loop: true
	        });
	    });
	</script>
	<title>Scheduler</title>
</head>
<body>
	<div class="welcome">
		<h1>Welcome</h1><br>
		<h3><span class="element"></span></h3>
	</div>
	<br><br>
	<div class="login">
		<a href="login.jsp">Login</a>
	</div>
</body>
</html>