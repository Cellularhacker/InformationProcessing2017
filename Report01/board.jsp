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
        <span>&lt; 게시판 임시페이지 &gt;</span>
        <table id="board">
            <tr>
                <th class="articleNum">No</th>
                <th class="articleTitle">제목</th>
                <th class="articleWriter">작성자</th>
                <th class="articleDate">날짜</th>
                <th class="articleView">조회수</th>
                <th class="articleLike">추천수</th>
            </tr>
            <tr>
                <td>1</td>
                <td>TEST</td>
                <td>www</td>
                <td>2017-10-24 21:47 KST</td>
                <td>1</td>
                <td>1</td>
            </tr>
            <%
                out.println("<!--Write Something Here-->");
            %>
        </table>

<%-- [Footer] --%>
<%@ include file="footer.jspf" %>