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
        <title>Register</title>
    </head>
    <body>
        <%
           String name=request.getParameter("name");
           String lname=request.getParameter("lname");
           String email=request.getParameter("email");
           String phone=request.getParameter("phone");
           String carno=request.getParameter("carno"); 
           String cname=request.getParameter("cname");  
           String ctype=request.getParameter("ctype");
           String places=request.getParameter("places");    
      
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           try
             {
                String myUrl="jdbc:mysql://localhost/carpool";
		Class.forName("com.mysql.jdbc.Driver");      		
		conn=DriverManager.getConnection(myUrl,"root","");
                st=conn.createStatement();
                st.executeUpdate("insert into driver values('"+name+"','"+lname+"','"+email+"','"+phone+"','"+carno+"','"+cname+"','"+ctype+"','"+places+"')");              
                out.println("Signed Up Successfully!");
                 String redirectURL = "../homepage.html";
        response.sendRedirect(redirectURL);

        
            }
            catch(Exception e)
            {                
                out.println(e);   
            }
        %>
    </body>
</html>
