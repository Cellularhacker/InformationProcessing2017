<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ifMultiTestPro.jsp</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	
	<%
		String name = request.getParameter("name");
		String local = request.getParameter("local");
		String tel = request.getParameter("tel");
		String localNum = "";
		
		if(local.equals("서울")) {
			localNum = "02";
			out.println("<b>" + name + "</b> 님의 전화번호는 " + localNum + "-" + tel + " 입니다.");
		} else if(local.equals("경기")) {
			localNum = "031";
			out.println("<b>" + name + "</b> 님의 전화번호는 " + localNum + "-" + tel + " 입니다.");
		} else if(local.equals("강원")) {
			localNum = "033";
			out.println("<b>" + name + "</b> 님의 전화번호는 " + localNum + "-" + tel + " 입니다.");
		}
	%>
</body>
</html>