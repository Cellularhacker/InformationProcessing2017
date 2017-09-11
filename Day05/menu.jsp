<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>menu.jsp</title>
</head>
<body>
	<%
		Timestamp now = new Timestamp(System.currentTimeMillis());
	%>
	<table border="1px" cellspacing="0">
		<tr>
			<td>Menu1</td>
			<td>Menu2</td>
			<td>Menu3</td>
		</tr>
	</table>
	<%=now.toString() %>
	<hr>
</body>
</html>