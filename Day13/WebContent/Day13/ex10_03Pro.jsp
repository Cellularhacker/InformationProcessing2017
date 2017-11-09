<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="exBean" class="ex.ch10.ExBean" scope="page" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	
	<jsp:useBean id="exxBean" class="ex.ch10.ExBean">
		<jsp:setProperty name="exxBean" property="*" />
	</jsp:useBean>
	
	<h2>입력한 정보표시</h2>
	아이디: <jsp:getProperty name="exxBean" property="id" /> <br>
	패스워드: <jsp:getProperty name="exxBean" property="passwd" /> <br>
	좋아하는 숫자: <jsp:getProperty name="exxBean" property="number" /> 
</body>
</html>