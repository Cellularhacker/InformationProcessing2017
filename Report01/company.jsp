<%--
    FileName: company.jsp
    Writer: Cellularhacker
    Web: (주)스마트아이즈
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- [Header] --%>
<%@ include file="header.jspf" %>

<%-- [Content] --%>
<%-- Default indent: 2 --%>
        <p>
            <img src="/jsp_report01/images/92a67d955.jpg">
        </p>
        <p>
            <span>박~카스!</span> <br>
            <span>DDDD</span>
        </p>

        &gt;<%= getServletContext().getContextPath() %><br>
        &lt;<%=request.getContextPath()%> <br>
        &gt;<%=request.getRequestURI()%>
        <%
            String pPath = request.getContextPath();
            out.println("\npath=> " + pPath);
        %>
        <% out.write(request.getContextPath()); %>

<%-- [Footer] --%>
<%@ include file="footer.jspf" %>