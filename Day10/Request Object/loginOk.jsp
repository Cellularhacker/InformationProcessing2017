<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>loginOk.jsp</title>
</head>
<body>
	<h2>로그인 성공!</h2>
	
	<%request.setCharacterEncoding("utf-8"); %>
	
	<%
		String userId = request.getParameter("userId");
		String userPasswd = request.getParameter("userPasswd");
		
		if( !(userId.equals("abcd") && userPasswd.equals("a1234")) )
			response.sendRedirect("loginForm.jsp");
		else
			response.sendRedirect("welcome.jsp");
	%>
</body>
</html>