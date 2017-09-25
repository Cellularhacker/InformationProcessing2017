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

		// if user didn't input id or password,
		if( (userId == null) || (userPasswd == null) ) {
			out.print("아이디 혹은 비밀번호가 입력되지 않았습니다!");
			return;
		}
			
		// if user's id or password are not same as "abcd" & "a1234"
		if( !(userId.equals("abcd") && userPasswd.equals("a1234")) )
			response.sendRedirect("loginForm.jsp");
		else {
			session.setAttribute("id", userId);
			response.sendRedirect("welcome.jsp");
		}
	%>
</body>
</html>