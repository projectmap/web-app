/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author surendra
 */
public class Logout extends HttpServlet {

  
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       
    }

 
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
      HttpSession session=req.getSession();
     
    // ServletContext application=getServletContext();
     // String user= (String)application.getAttribute("user");
     //String user=(String) session.getAttribute("user");
    // pw.println("dear "+user+" you are logged out..");
    //application.removeAttribute("user");
    session.removeAttribute("user");
    //session.setAttribute("user","");
    res.sendRedirect("Loginjsp.jsp"); 
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
