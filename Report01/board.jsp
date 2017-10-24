<%--
    FileName: board.jsp
    Writer: Cellularhacker
    Web: (주)스마트아이즈
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- [Header] --%>
<%@ include file="header.jspf" %>

<%-- [Content] --%>
<%-- Default indent: 2 --%>
        <center>&lt;게시판 임시페이지 &gt;</center>
        <table id="board">
            <tr>
                <th>No</th>
                <th>제목</th>
                <th>작성자</th>
                <th>날짜</th>
                <th>조회수</th>
                <th>추천수</th>
            </tr>
            <%
                out.println("<!--Write Something Here-->");
            %>
        </table>

<%-- [Footer] --%>
<%@ include file="footer.jspf" %>