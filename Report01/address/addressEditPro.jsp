<%--
    FileName: addressEditPro.jsp
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
        <% request.setCharacterEncoding("utf-8");%>
        <%-- Including DBInfo files for securing the contents. --%>
        <%@ include file="/jsp_report01/core/DBInfo.jsp" %>

        <% 
            Connection conn=null;
            PreparedStatement pstmt=null;
            ResultSet rs=null;

            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");    
            String tel = request.getParameter("tel");        
            Timestamp register=new Timestamp(System.currentTimeMillis());

            String str="";

            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
                
                String sql= "update jsp_report set name= ? , email= ? , gender= ? , address= ? , tel= ?  where id= ? ";
                pstmt=conn.prepareStatement(sql);
                pstmt.setString(1,name);
                pstmt.setString(2,address);
                pstmt.setString(3,gender);
                pstmt.setString(4,address);
                pstmt.setString(5,tel);
                pstmt.setString(6,id);
                pstmt.executeUpdate();

                str= id + "의 주소록을 성공적으로 수정하였습니다";
            }catch(Exception e){ 
                e.printStackTrace();
                str= id + "의 주소록 수정에 실패하였습니다.";
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