<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>beanTestPro.jsp</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	
	<jsp:useBean id="testBean" class="ch10.bean.TestBean">
		<jsp:setProperty name="testBean" property="name" />
	</jsp:useBean>
	
	<h2>자바빈을 사용하는 JSP 페이지</h2>
		
		
	입력된 이름은 <jsp:getProperty name="testBean" property="name" />
</body>
</html>