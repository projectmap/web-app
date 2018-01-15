/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author surendra
 */
public class Signup extends HttpServlet {

    
   
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       
    }

 
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
          HttpSession session=req.getSession();
        String user= req.getParameter("user");  
        String contact= req.getParameter("contact");  
      String code=req.getParameter("code");
        Datastore d=new Datastore();
      int h=  d.store(user,code,contact);
           if(h==0){System.out.println("ok2");
        session.setAttribute("user",user);
        res.sendRedirect("welcome.jsp");
        
    }else if(h==1){
        System.out.println("ok9");//pw.println("Sorry wrong username or password.");
         res.sendRedirect("Loginjsp.jsp");
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
