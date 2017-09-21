<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ex6_04Pro.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		int num = Integer.parseInt(request.getParameter("num"));
	%>
	<h2>입력한 숫자만큼 반복 수행</h2>
	
	<table border="1">
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>글내용</th>
		</tr>		
		<%
			for(int i=num; i>0; i--) {
				out.println("<tr>");
				out.println("<td>" + i + "</td>");
				out.println("<td>제목 " + i + "</td>");
				out.println("<td>내용 " + i + "</td>");
				out.println("</tr>");
			}
		%>
	</table>
</body>
</html>