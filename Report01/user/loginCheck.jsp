<%--
    FileName: loginCheck.jsp
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
            if(sessionId != null) {
                response.sendRedirect("../index.jsp");
            }
            
            String userId = request.getParameter("userId");
            String userPasswd = request.getParameter("userPasswd");

            if(userId == null || userPasswd == null)
                out.println("<h2>비정상적인 접근입니다!</h2>");
            else {
                if(userId.equals("aaaa") && userPasswd.equals("1234a")) {
                    session.setAttribute("sessionId", userId);

                    out.println("<h2>로그인에 성공하였습니다.</h2>");
                    out.println("환영합니다, " + userId + "님.");
                } else {
                    out.println("<h2>로그인에 실패하였습니다.</h2>");
                }
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