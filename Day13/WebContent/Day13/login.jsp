<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="login" class="jspbook.ch07.LoginBean.LoginBean" scope="page" />
	<jsp:setProperty name="login" property="*" />
	
	<%
		if(!login.checkUser()) {
			out.println("로그인 실패 !!");
		} else {
			out.println("로그인 성공 !!");
		}
	%>
	
	사용자 아이디: <jsp.getProperty name="login" property="userid" /> <br>
	사용자 패스워드: <jsp.getProperty name="login" property="passwd" />
</body>
</html>