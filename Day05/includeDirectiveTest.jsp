<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include디렉티브 연습</title>
</head>
<body>
	<h2>include디렉티브 연습</h2>
	<%
		String copyrighter = "Cellularhacker";
	%>
	<%@ include file="menu.jsp" %>
	포함하는 페이지 includeDirective.jsp의 내용입니다.
	<%@ include file="footer.jsp" %>

</body>
</html>