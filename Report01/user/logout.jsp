<%--
    FileName: logout.jsp
    Writer: Cellularhacker
    Web: (주)스마트아이즈
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- [Header] --%>
<%@ include file="../headerClear.jspf" %>

<%-- [Content] --%>
<%-- Default indent: 2 --%>
        <%
            if(sessionId == null) {
                out.println("<h2>비정상적인 접근입니다!</h2>");
            } else {
                session.setAttribute("sessionId", null);
                out.println("<h2>성공적으로 로그아웃 되었습니다.</h2>");
            }
        %>
        <script type='text/javascript'>
            setTimeout( redirect, 1500 );
            function redirect() {
                document.location.href = '/jsp_report01/index.jsp';
            }
        </script>

<%-- [Footer] --%>
<%@ include file="../footer.jspf" %>