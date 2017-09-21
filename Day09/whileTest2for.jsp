<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>whileTest.jsp</title>
</head>
<body>
	<%
		int i = 0;
		
		
		for(i=0;i<10;i++)
			out.println("출력되는 값: " + i + "<br>");
		
	%>
</body>
</html>