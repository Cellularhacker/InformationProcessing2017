<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>footer.jsp</title>
</head>
<body>
	<%
		Timestamp now = new Timestamp(System.currentTimeMillis());
	%>
	<hr>
	<p id="footer">
		현재시간: <%=now.toString() %>
	</p>
</body>
</html>