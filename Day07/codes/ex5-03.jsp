<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ex5-03.jsp</title>
</head>
<body>
	<%!
		String name = "Cellularhacker";
		public String getName() {
			return name;
		}
	%>
	
	<%
		String hobby = "Coding";
	%>
	
	이름 = <%=getName() %>, 취미 = <%=hobby %>
</body>
</html>