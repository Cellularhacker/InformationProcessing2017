<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>입력한 정보</title>
</head>
<body>
	<h2>입력한 정보</h2>
	<%request.setCharacterEncoding("utf-8"); %>
	<%
		String grade = request.getParameter("hak");
		String name = request.getParameter("name");
		String major = request.getParameter("major");
	%>
	학번: <%=grade %> <br>
	이름: <%=name %> <br>
	전공: <%=major %> <br>
</body>
</html>