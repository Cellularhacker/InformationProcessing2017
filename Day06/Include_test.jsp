<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>4장 실습</title>
	<link rel="stylesheet" type="text/css" href="include_test.css">
</head>
<body>
	<div id="content">
		<div id="top">
			<h2>include 지시어 테스트</h2>
			<hr>
		</div>
		<div id="menu">
			<%@ include file="menu.jsp" %>
		</div>
		<div id="news">
			<%@ include file="news.jsp" %>
		</div>
		<div id="shopping">
			<%@ include file="shopping.jsp" %>
		</div>
		<div id="footer">
			<%@ include file="footer.jsp" %>
		</div>
	</div>
</body>
</html>