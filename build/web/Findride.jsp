<%-- 
    Document   : dataFetch
    Created on : 26 Nov, 2018, 10:53:13 PM
    Author     : isha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="b2.jpg" style=" background-repeat:no-repeat; background-size: cover">
        <button>
        <table border="1" width=" 100%">
            
            <tr style="background-color: burlywood; color: aliceblue; font-weight: bold;">
                <td>Name</td>
                <td>LastName</td>
                <td>Email</td>
                <td>Phone</td>
                <td>Carno</td>
                <td>Cname</td>
                <td>Ctype</td>
                <td>Places</td>
                
            </tr>
            </button>
        <%
           String loc=request.getParameter("a");
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           try
             {
                String myUrl="jdbc:mysql://localhost/carpool";
		Class.forName("com.mysql.jdbc.Driver");      		
		conn=(Connection)DriverManager.getConnection(myUrl,"root","");
                st=conn.createStatement();
                String qry="select * from driver where places= '"+loc+"'";    
                rs=st.executeQuery(qry);
                while(rs.next())
                {
                %>
                <tr>
                    <td><%=rs.getString("name") %></td>
                    <td><%=rs.getString("lname") %></td>
                    <td><%=rs.getString("email") %></td>
                    <td><%=rs.getString("phone") %></td>
                    <td><%=rs.getString("carno") %></td>
                    <td><%=rs.getString("cname") %></td>
                    <td><%=rs.getString("ctype") %></td>
                    <td><%=rs.getString("places") %></td>
                                   </tr>
                <%   
                }
             }
            catch(Exception e)
            {                
                out.println(e);   
            }
        %>
          
        </table>
    </body>
</html>