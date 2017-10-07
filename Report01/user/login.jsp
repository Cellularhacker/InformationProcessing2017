<%--
    FileName: user/login.jsp
    Writer: Cellularhacker
    Web: (주)스마트아이즈
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- [Header] --%>
<%@ include file="../header.jspf" %>

<%-- [Content] --%>
<%-- Default indent: 2 --%>
        <%
            //Setting Character Encding into UTF-8
            request.setCharacterEncoding("utf-8");

            if(sessionId != null)
                response.sendRedirect("/jsp_report01/index.jsp");
        %>
        <div class="loginContainer">
            <form method="post" action="loginCheck.jsp">
                <div class="loginRow">
                    <div class="loginLabel">
                        <label id="userId">아이디</label>
                    </div>
                    <div class="loginContent">
                        <input type="text" id="userId" name="userId">
                    </div>
                </div>
                <div class="loginRow">
                    <div class="loginLabel">
                        <label id="userPasswd">비밀번호</label>
                    </div>
                    <div class="loginContent">
                        <input type="password" id="userPasswd" name="userPasswd">
                    </div>
                </div>
                <div class="loginRow">
                    <div class="loginButton">
                        <input type="reset" value="초기화">
                    </div>
                    <div class="loginButton">
                        <input type="submit" value="로그인">
                    </div>
                </div>
            </form>
        </div>

<%-- [Footer] --%>
<%@ include file="../footer.jspf" %>