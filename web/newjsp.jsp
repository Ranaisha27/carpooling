<%-- 
    Document   : newjsp
    Created on : Nov 12, 2018, 3:54:13 PM
    Author     : ranai
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
       <%
           String uname=request.getParameter("email");
           String pass=request.getParameter("pass");
           try{
		String myUrl="jdbc:mysql://localhost/carpool";
		//step 1:
		Class.forName("com.mysql.jdbc.Driver");
      		//step 2:
		Connection conn=DriverManager.getConnection(myUrl,"root","");
		String query="Select email,password from info where email= '"+uname+"' and password='"+pass+"'";
		//step 3:
		Statement st=conn.createStatement();
		//step 4:
		ResultSet rs =st.executeQuery(query);
		if(rs.next()){
			out.println("Logged in successfully");
                     
         String redirectURL = "buttons.html";
        response.sendRedirect(redirectURL);

                        
		}  
                else
                out.println("Invalid username or password");
		//step 5
		st.close();
		}
		catch(Exception e){
			System.out.println("Got an exception! ");
			System.out.println(e.getMessage());
		}
           
        %>
    </body>
</html>
