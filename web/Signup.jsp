<%-- 
    Document   : Signup
    Created on : Nov 15, 2018, 9:54:37 AM
    Author     : ranai
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
    </head>
    <body>
        <%
           String uname=request.getParameter("uname");
           String pwd=request.getParameter("pass");
           String email=request.getParameter("email");
           String tel=request.getParameter("tel");
           String add=request.getParameter("add");
           String nn=request.getParameter("nn");
           
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           try
             {
                String myUrl="jdbc:mysql://localhost/carpool";
		Class.forName("com.mysql.jdbc.Driver");      		
		conn=DriverManager.getConnection(myUrl,"root","");
                st=conn.createStatement();
                st.executeUpdate("insert into info values('"+email+"','"+pwd+"','"+add+"','"+tel+"','"+uname+"','"+nn+"')");              
                out.println("Signed Up Successfully!");
                
        String redirectURL = "index.html";
        response.sendRedirect(redirectURL);
            }
            catch(Exception e)
            {                
                out.println(e);   
            }
        %>
    </body>
</html>
