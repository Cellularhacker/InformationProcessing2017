<%--
    FileName: addressInsertPro.jsp
    Writer: Cellularhacker
    Web: (주)스마트아이즈
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%-- [Header] --%>
<%@ include file="../header.jspf" %>

<%-- [Content] --%>
<%-- Default indent: 2 --%>
        <%-- Including DBInfo files for securing the contents. --%>
        <%@ include file="/jsp_report01/core/DBInfo.jsp" %>
        
        <% request.setCharacterEncoding("utf-8");%>

        <% 
            String id = request.getParameter("id");
            String passwd= request.getParameter("passwd");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");    
            String tel = request.getParameter("tel");        
            Timestamp register=new Timestamp(System.currentTimeMillis());

            Connection conn=null;
            PreparedStatement pstmt=null;
            String str="";

            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

                String sql= "insert into jsp_report values (?,?,?,?,?,?,?,?)";
                pstmt=conn.prepareStatement(sql);
                pstmt.setString(1,id);
                pstmt.setString(2,passwd);
                pstmt.setString(3,name);
                pstmt.setString(4,email);
                pstmt.setString(5,gender);
                pstmt.setString(6,address);
                pstmt.setString(7,tel);
                pstmt.setTimestamp(8,register);
                pstmt.executeUpdate();

                str= "성공적으로 추가 하였습니다.";

            }catch(Exception e){ 
                e.printStackTrace();
                str="새로운 멤버의 추가에 실패하였습니다.";


            }finally{
                if(pstmt != null) 
                    try{pstmt.close();}catch(SQLException sqle){}
                if(conn != null) 
                    try{conn.close();}catch(SQLException sqle){}
            }
        %>
        <%=str %>
        <script type='text/javascript'>
            setTimeout( redirect, 1500 );
            function redirect() {
                document.location.href = '/jsp_report01/contacts.jsp';
            }
        </script>

<%-- [Footer] --%>
<%@ include file="../footer.jspf" %>