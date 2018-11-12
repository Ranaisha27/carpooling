import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(urlPatterns = {"/welcome"})
public class welcome extends HttpServlet {

    
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException , ServletException
    {
          res.setContentType("text/html");
                PrintWriter out=res.getWriter();
            
		String s=req.getParameter("username");
                String r=req.getParameter("password");
                RequestDispatcher rd= null;
                
                if(s.equals("ISHA"))
                {
                    if(r.equals("RANA"))
                    {
                   
                         out.print("<h1>WELCOME<h1>");
                    }
             }
                    else
                    {
             rd = req.getRequestDispatcher("index.html");
             rd.forward(req,res);
	}
                
    }
}