<%--
    FileName: contacts.jsp
    Writer: Cellularhacker
    Web: (주)스마트아이즈
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%-- [Header] --%>
<%@ include file="header.jspf" %>

<%-- [Content] --%>
<%-- Default indent: 2 --%>
        <%-- Including DBInfo files for securing the contents. --%>
        <%@ include file="/jsp_report01/core/DBInfo.jsp" %>

        <%
            Connection conn=null;
            PreparedStatement pstmt=null;
            ResultSet rs=null;

            try{                
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
                
                String sql= "select id, name, tel, email, gender, address from jsp_report";
                pstmt=conn.prepareStatement(sql);
                rs=pstmt.executeQuery();
            
        %>
        <table border="1" align="center">
            <tr>
                <th>이름</th>
                <th>전화번호</th>
                <th>이메일</th>
                <th>성별</th>
                <th>주소</th>
                <th>작업</th>
            </tr>
            <%
                while(rs.next()){
                    out.println("<form method=\"post\" action=\"address/addressPage.jsp\">");
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("name") + "</td>");
                    out.println("<td>" + rs.getString("tel") + "</td>");
                    out.println("<td align=\"left\">" + rs.getString("email") + "</td>");
                    out.println("<td>" + rs.getString("gender") + "</td>");
                    out.println("<td>" + rs.getString("address") +"</td>");
                    out.println("<td>");
                    out.println("<input name=\"submit\" type=\"submit\" value=\"수정\" >");
                    out.println("<input name=\"submit\" type=\"submit\" value=\"삭제\" >");
                    out.println("<input name=\"id\" type=\"hidden\" value=\"" + rs.getString("id") + "\">");
                    out.println("</td>");
                    out.println("</tr>");
                    out.println("</form>");
                }
                out.println("<form method=\"post\" action=\"address/addressPage.jsp\">");
                out.println("<tr>");
                out.println("<td colspan=\"6\">");
                out.println("<input name=\"submit\" type=\"submit\" value=\"추가\" >");
                out.println("</td>");
                out.println("</tr>");
                out.println("</form>");
            }catch(Exception e){ 
                e.printStackTrace();
            }finally{
                if(rs != null) 
                    try{rs.close();}catch(SQLException sqle){}
                if(pstmt != null) 
                    try{pstmt.close();}catch(SQLException sqle){}
                if(conn != null) 
                    try{conn.close();}catch(SQLException sqle){}
            }
            %>
        </table>
<%-- [Footer] --%>
<%@ include file="footer.jspf" %>