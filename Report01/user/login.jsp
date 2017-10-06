<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>회원 로그인</title>
</head>
<body>
	<%
        //Setting Character Encding into UTF-8
        request.setCharacterEncoding("utf-8");
        
        String sessionUsername = (String)session.getAttribute("sessionUsername");
        if(sessionUser != null)
            response.sendRedirect(".jsp");
    %>
</body>
</html>