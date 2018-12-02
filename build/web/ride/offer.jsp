<%-- 
    Document   : offer
    Created on : Nov 27, 2018, 11:00:37 AM
    Author     : ranai
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        
        <pre><b><font size="5px">DETAILS:</font></b>
             <h1>Check your details</h1>
                </pre>
          <table id = "tb">
            <tr>
            <th>Name&nbsp;</th>
            <th>lname&nbsp;&nbsp;</th>
            <th>email&nbsp;&nbsp;</th>
            <th>phone&nbsp;&nbsp;&nbsp;&nbsp;</th>
            <th>pdate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
            <th>ddate&nbsp;&nbsp;&nbsp;&nbsp;</th>
            <th> ppoint&nbsp;&nbsp;&nbsp;&nbsp;</th>
            <th> dpoint&nbsp;&nbsp;&nbsp;&nbsp;</th>
            
            <th>jtype&nbsp;&nbsp;&nbsp;&nbsp;</th>
            <th>taxi&nbsp;&nbsp;&nbsp;&nbsp;</th>
            <th>ptime&nbsp;&nbsp;&nbsp;&nbsp;</th>
            <th>dtime</th>
            </tr>
       <%
            
           
	
               
               String name = request.getParameter("name");
               String lname=request.getParameter("lname");
               String email=request.getParameter("email");
            String phone=request.getParameter("phone");
            String pdate=request.getParameter("pdate");
            String ddate=request.getParameter("ddate");
             String ppoint=request.getParameter("ppoint");
              String dpoint=request.getParameter("dpoint");
               String jtype=request.getParameter("jtype");
                String taxi=request.getParameter("taxi");
                 String ptime=request.getParameter("ptime");
                 String dtime=request.getParameter("dtime");
                 Statement st1=null;
           ResultSet rs1=null;
           try{
               String myUrl="jdbc:mysql://localhost/carpool";
		//step 1:
		Class.forName("com.mysql.jdbc.Driver");
      		//step 2:
		Connection conn=DriverManager.getConnection(myUrl,"root","");
                 st1=conn.createStatement();
                st1.executeUpdate("insert into offer values('"+name+"','"+lname+"','"+email+"','"+phone+"','"+pdate+"','"+ddate+"','"+ppoint+"','"+dpoint+"'"
                        + ",'"+jtype+"','"+taxi+"','"+ptime+"','"+dtime+"')");
                String query="Select * from offer where name = '"+name+"'";
		//step 3:
		PreparedStatement st=conn.prepareStatement(query);
		//step 4:
                ResultSet rs =st.executeQuery();
                while(rs.next())
                {
                %>
                
               <% 
                %><td>&nbsp;<%out.println(rs.getString("name"));%>&nbsp;</td><%
                
         
                
                %><td><%out.println(rs.getString("lname"));%>&nbsp;</td><%
                
                
                %><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%out.println(rs.getString("email"));%>&nbsp;</td><%
            
           
                
                %><td><%out.println(rs.getString("phone"));%>&nbsp;</td><%
           
           
               
                %><td><%out.println(rs.getString("pdate"));%>&nbsp;</td><%
           
                
                %><td><%  out.println(rs.getString("ddate"));%>&nbsp;</td><%
               
          
                
                %><td><% out.println(rs.getString("ppoint"));%>&nbsp;</td><%
                
                         
                %><td><% out.println(rs.getString("dpoint"));%>&nbsp;</td><%
                
                 %><td><% out.println(rs.getString("jtype"));%>&nbsp;</td><%
                     
                     %><td><% out.println(rs.getString("taxi"));%>&nbsp;</td><%
                         
                         %><td><% out.println(rs.getString("ptime"));%>&nbsp;</td><%
                             
                             %><td><% out.println(rs.getString("dtime"));%>&nbsp;</td><%
                
                
                 
                 
                
                %></tr>
          
    
          

                    <br>
              <%
                 } 
}
                 
		catch(Exception e){
			System.out.println("Got an exception! ");
			System.out.println(e.getMessage());
		}
                
           
        %>
         <div class="container"  >
 <a href="../Findride.html">
        <button class="btn">Find your Ride</button><br>
    </a>
    
</div>
        </table>
    </body>
</html>

