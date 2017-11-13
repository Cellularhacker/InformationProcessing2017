<%--
    FileName: loginCheck.jsp
    Writer: Cellularhacker
    Web: (주)스마트아이즈
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>
    
<%-- [Header] --%>
<%@ include file="../headerClear.jspf" %>

<%-- [Content] --%>
<%-- Default indent: 2 --%>
        <%-- Including DBInfo files for securing the contents. --%>
        <%@ include file="/jsp_report01/core/DBInfo.jsp" %>
        <%

            if(sessionId != null) {
                response.sendRedirect("../index.jsp");
            }
            
            String userId = request.getParameter("userId");
            String userPasswd = request.getParameter("userPasswd");

            if(userId == null || userPasswd == null)
                out.println("<h2>비정상적인 접근입니다!</h2>");
            else {
                Connection conn=null;
                PreparedStatement pstmt=null;
                ResultSet rs=null;

                try {
                    //Connecting Driver
                    Class.forName("com.mysql.jdbc.Driver");
                    conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

                    //Preparing DB Query
                    String sql= "select id from jsp_report where id= ? and passwd= ?";
                    pstmt=conn.prepareStatement(sql);
                    pstmt.setString(1,userId);
                    pstmt.setString(2,userPasswd);
                    rs=pstmt.executeQuery();

                    rs.next();

                    // There is no matching account.
                    if(rs.getRow() == 0) {
                        out.println("<h2>로그인에 실패하였습니다.</h2>");
                    } else {
                        session.setAttribute("sessionId", userId);

                        out.println("<h2>로그인에 성공하였습니다.</h2>");
                        out.println("환영합니다, " + userId + "님.");
                    }

                }catch(Exception e){ 
                    e.printStackTrace();
                    out.println("서버 문제로 로그인에 실패하였습니다.");
                }finally{
                    if(pstmt != null) 
                        try{pstmt.close();}catch(SQLException sqle){}
                    if(conn != null) 
                        try{conn.close();}catch(SQLException sqle){}
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