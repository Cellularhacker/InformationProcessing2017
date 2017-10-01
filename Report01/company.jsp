<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>(주)스마트 아이즈</title>
    <link rel="stylesheet" type="text/css" href="/jsp_report01/css/index.css">
</head>
<body>

<div id="wrap">
    <div id="header">
        <%@ include file="header.jsp" %>
    </div>
    <div id="menu">
        <%@ include file="menu.jsp" %>
    </div>
    <div id="content"> <%-- 회사 정보 --%>
        <%@ include file="/jsp_report01/index_sub/companySub.jsp"%>
    </div>
    <div id="footer">
        <%@ include file="footer.jsp" %>
    </div>
</div>
</body>
</html>