<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>환영합니다!</title>
</head>
<body>
	<% 
		String currentSessionId = (String)session.getAttribute("id");
		if(currentSessionId == null) {
			response.sendRedirect("loginForm.jsp");
			out.println("잘못된 접근입니다.");
			return;
		}

		if(!currentSessionId.equals("abcd"))
			response.sendRedirect("loginForm.jsp");

	 %>
	<h2>환영합니다!</h2>
	
	환영합니다.. <b><%=currentSessionId %></b> 님
</body>
</html>