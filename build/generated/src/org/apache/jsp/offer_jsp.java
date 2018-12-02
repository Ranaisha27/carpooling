package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class offer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background-image: url(\"bg.jpg\");\n");
      out.write("                background-size: cover;\n");
      out.write("                background-color: #e6faff;\n");
      out.write("            }\n");
      out.write("            #tb{\n");
      out.write("                margin-top: px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("        <pre><b><font size=\"5px\">DETAILS:</font></b>\n");
      out.write("                </pre>\n");
      out.write("          <table id = \"tb\">\n");
      out.write("            <tr>\n");
      out.write("            <th>Name&nbsp;</th>\n");
      out.write("            <th>Age&nbsp;&nbsp;</th>\n");
      out.write("            <th>No of members&nbsp;&nbsp;</th>\n");
      out.write("            <th>email&nbsp;&nbsp;&nbsp;</th>\n");
      out.write("            <th>phone&nbsp;&nbsp;&nbsp;&nbsp;</th>\n");
      out.write("            <th>category&nbsp;&nbsp;&nbsp;</th>\n");
      out.write("            <th>Flats and houses&nbsp;&nbsp;&nbsp;</th>\n");
      out.write("            <th>Requirement&nbsp;&nbsp;&nbsp;</th>\n");
      out.write("            <th>Suggestions</th>\n");
      out.write("            </tr>\n");
      out.write("       ");

            
           try{
	
               String myUrl="jdbc:mysql://localhost/carpool";
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
		//step 1:
		Class.forName("com.mysql.jdbc.Driver");
      		//step 2:
		Connection conn=DriverManager.getConnection(myUrl,"root","");
                 st1=conn.createStatement();
                st1.executeUpdate("insert into info values('"+name+"','"+lname+"','"+email+"','"+phone+"','"+pdate+"','"+ddate+"','"+ppoint+"','"+dpoint+"'"
                        + ",'"+jtype+"','"+taxi+"','"+ptime+"','"+dtime+"')");
                String query="Select * from offer where name = '"+name+"'";
		//step 3:
		PreparedStatement st=conn.prepareStatement(query);
		//step 4:
                ResultSet rs =st.executeQuery();
                while(rs.next())
                {
                
      out.write("\n");
      out.write("                \n");
      out.write("               ");
 
                
      out.write("<td>&nbsp;");
out.println(rs.getString("name"));
      out.write("&nbsp;</td>");

                
         
                
                
      out.write("<td>");
out.println(rs.getString("lname"));
      out.write("&nbsp;</td>");

                
                
                
      out.write("<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp");
out.println(rs.getString("email"));
      out.write("&nbsp;</td>");

            
           
                
                
      out.write("<td>");
out.println(rs.getString("phone"));
      out.write("&nbsp;</td>");

           
           
               
                
      out.write("<td>");
out.println(rs.getString("pdate"));
      out.write("&nbsp;</td>");

           
                
                
      out.write("<td>");
  out.println(rs.getString("ddate"));
      out.write("&nbsp;</td>");

               
          
                
                
      out.write("<td>");
 out.println(rs.getString("ppoint"));
      out.write("&nbsp;</td>");

                
                         
                
      out.write("<td>");
 out.println(rs.getString("dpoint"));
      out.write("&nbsp;</td>");

                
                 
      out.write("<td>");
 out.println(rs.getString("jtype"));
      out.write("&nbsp;</td>");

                     
                     
      out.write("<td>");
 out.println(rs.getString("taxi"));
      out.write("&nbsp;</td>");

                         
                         
      out.write("<td>");
 out.println(rs.getString("ptime"));
      out.write("&nbsp;</td>");

                             
                             
      out.write("<td>");
 out.println(rs.getString("dtime"));
      out.write("&nbsp;</td>");

                
                
                 
                 
                
                
      out.write("</tr>\n");
      out.write("                    <br>\n");
      out.write("               \n");
      out.write("             ");
  

              }
              
                  }
                  
		catch(Exception e){
			System.out.println("Got an exception! ");
			System.out.println(e.getMessage());
		}
                
           
        
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
