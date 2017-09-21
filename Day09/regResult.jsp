<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>regResult.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String userEmail = request.getParameter("userEmail");
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");
		String userGender = request.getParameter("userGender");
		String [] userHobby = request.getParameterValues("userHobby");
		String [] userFoods = request.getParameterValues("userFoods");
	%>
	
	입력하신 값은 다음과 같습니다.<br>
	이메일: <%=userEmail %> <br>
	이름: <%=userName %> <br>
	비밀번호: <%=userPassword %> <br>
	성별: <%=userGender %> <br>
	취미:&nbsp;
	<%
		for(int i=0; i<userHobby.length; i++)
			out.print(userHobby[i] + " ");
		out.println(" <br>");
	%>
	음식:&nbsp;
	<%
		for(int i=0; i<userFoods.length; i++)
			out.print(userFoods[i] + " ");
		out.println(" <br>");
	%>
	
</body>
</html>