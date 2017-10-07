<%--
    FileName: contacts.jsp
    Writer: Cellularhacker
    Web: (주)스마트아이즈
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String [] userName = {"황희정", "김길동", "아무개"};
    String [] userTel = {"010-1234-5678", "010-1234-1234", "010-2355-2763"};
    String [] userEmail = {"hwang@sss.com", "kkimgd234@kim.com", "anything@amu.net"};
    String [] userGender = {"남", "남", "남"};
%>

<%-- [Header] --%>
<%@ include file="header.jspf" %>

<%-- [Content] --%>
<%-- Default indent: 2 --%>
        <table border="1" align="center">
            <tr>
                <th>이름</th>
                <th>전화번호</th>
                <th>이메일</th>
                <th>성별</th>
            </tr>
            <%
                for(int i=0; i<userName.length; i++) {
                    out.println("<tr>");
                    out.println("<td>" + userName[i] + "</td>");
                    out.println("<td>" + userTel[i] + "</td>");
                    out.println("<td align=\"left\">" + userEmail[i] + "</td>");
                    out.println("<td>" + userGender[i] + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>
<%-- [Footer] --%>
<%@ include file="footer.jspf" %>