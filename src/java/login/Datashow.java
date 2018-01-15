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
public class Datashow extends HttpServlet {

    PrintWriter pw;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       
    }

  
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       pw=res.getWriter();
       pw.print("hello");
        HttpSession session=req.getSession();
        String user=(String)session.getAttribute("user");
         int i=session.getMaxInactiveInterval();
      System.out.println(i+"ha");
         //ServletContext app=getServletContext();
       //String user=(String)  app.getAttribute("user");
     //String user=  (String) session.getAttribute("user");
     if(user==null){
         //pw.println("login first");
         res.sendRedirect("loginjsp.jsp");
     }else{
        res.sendRedirect("data.jsp");
     }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
