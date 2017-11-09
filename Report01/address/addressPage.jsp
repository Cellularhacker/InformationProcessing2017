<%--
    FileName: template.jsp
    Writer: Cellularhacker
    Web: (주)스마트아이즈
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%-- [Header] --%>
<%@ include file="../header.jspf" %>
<% request.setCharacterEncoding("utf-8");%>

<%-- [Content] --%>
<%-- Default indent: 2 --%>
        <%-- Including DBInfo files for securing the contents. --%>
        <%@ include file="/jsp_report01/core/DBInfo.jsp" %>
        <%
            if(sessionId == null) {
                out.println("잘못된 접근입니다!");
            
        %>
        <script type='text/javascript'>
            setTimeout( redirect, 1500 );
            function redirect() {
                document.location.href = '/jsp_report01/index.jsp';
            }
        </script>
        <%
            } else {
                String value = request.getParameter("submit");
                String id = request.getParameter("id");

                Connection conn=null;
                PreparedStatement pstmt=null;
                ResultSet rs=null;

                if(value.equals("추가")) {
                    // 
                    // 데이터 추가 코드
                    //
                %>

                <%@ include file="addressInsert.jspf" %>
                    
                <%
                } else if(value.equals("수정")) {
                    //
                    // 수정코드
                    //
                    %>
                    
                    <%@ include file="addressEdit.jspf" %>

                    <%
                    
                } else if(value.equals("삭제")) {
                    //
                    // 삭제코드
                    //
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

                        String sql= "delete from jsp_report where id= ? ";
                        pstmt=conn.prepareStatement(sql);
                        pstmt.setString(1,id);
	                    pstmt.executeUpdate();
                    
                        out.println("정상적으로 삭제되었습니다.");
                        
                        out.println("<script type='text/javascript'>");
                        out.println("setTimeout( redirect, 1500 );");
                        out.println("function redirect() {");
                        out.println("document.location.href = '/jsp_report01/contacts.jsp';");
                        out.println("}");
                        out.println("</script>");
                        
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

                } else {
                    out.println("잘못된 접근입니다!");

                    %>
                    <script type='text/javascript'>
                        setTimeout( redirect, 1500 );
                        function redirect() {
                            document.location.href = '/jsp_report01/index.jsp';
                        }
                    </script>
                    <%
                }
            }
            
        %>

<%-- [Footer] --%>
<%@ include file="../footer.jspf" %>