<%-- 
    Document   : forgot
    Created on : 26 Nov, 2018, 11:08:05 AM
    Author     : Abhimanyu
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image: url(images/b2.jpg);
                background-size: cover;
                background-color: #e6faff;
            }
            #tb{
                margin-top: px;
            }
            
            </style>
    </head>
    <body>
    <center>
        <h1>  YOUR PASSWORD IS:</h1>
    </center>
            <%
           String email=request.getParameter("email");
           String password=request.getParameter("nn");
           try{
		String myUrl="jdbc:mysql://localhost/carpool";
		//step 1:
		Class.forName("com.mysql.jdbc.Driver");
      		//step 2:
		Connection conn=DriverManager.getConnection(myUrl,"root","");
                String query="Select email,nickname,password from info where email= '"+email+"' and nickname='"+password+"'";
		//step 3:
		Statement st=conn.createStatement();
		//step 4:
		ResultSet rs =st.executeQuery(query);
		if(rs.next()){
                    %>
                    <h1><%
			out.println("Password is: "+rs.getString("password"));
                        %>
                    </h1>
                      <%  
                        
		}  
                else
                out.println("Invalid email or nickname");
               //step 5
		st.close();
		}
		catch(Exception e){
			System.out.println("Got an exception! ");
			System.out.println(e.getMessage());
		}
           
        %>
        <a href="index.html">
  
            <button class="btn" >    GO BACK          </button>
 </a>
    </body>
</html>
