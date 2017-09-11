<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8" %>
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>환영합니다!</title>
</head>

<body>
   <%=request.getParameter("userName") %>님 환영합니다!
   <%=request.getParameter("userEmail") %>
</body>
</html>