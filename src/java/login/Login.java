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
import org.apache.catalina.servlet4preview.RequestDispatcher;

/**
 *
 * @author surendra
 */
public class Login extends HttpServlet {
PrintWriter pw;
   
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
         pw=res.getWriter();
         HttpSession session=req.getSession();
       
    String user= req.getParameter("user");  
        String contact= req.getParameter("contact");  
      String code=req.getParameter("code");
       session.setAttribute("user",user);
        session.setAttribute("code",code);
      ServletContext app=getServletContext();
      res.setContentType("Text/html");
     Datastore d=new Datastore();System.out.println("ok1");
     
    int h= d.send(user,code);
    if(h==0){System.out.println("ok2");
   app.setAttribute("user",user);
        //session.setAttribute("user",user);
        res.sendRedirect("welcome.jsp");
        
    }else if(h==1){
        System.out.println("ok9");//pw.println("Sorry wrong username or password.");
         res.sendRedirect("Loginjsp.jsp");
    }
          //if(user.equals("suren")&& code.equals("code")){
            // session.setAttribute("user",user);
           // res.sendRedirect("welcome.jsp");
             
        //  }  else{
          
       // pw.println("Sorry wrong username or password.");
          
         // }
    }

  
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
