/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author surendra
 */
public class Change extends HttpServlet {
int i=0;
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter p=response.getWriter();
        p.println("hey man");
    }

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession s=request.getSession();
        PrintWriter p=response.getWriter();
       
         String ss=(String)s.getAttribute("code");
        String code=request.getParameter("okman");//current code..
      
       String user=(String)s.getAttribute("user");
       String newcode=request.getParameter("go");//new password
    
       
       if(code!=null){
           if(code.equals(ss)){
               
        Datastore d=new Datastore();
      int i=d.changecode(user,newcode);
      if(i==0){
           s.setAttribute("me","me");
        //  response.sendRedirect("set.jsp");
          p.println("sorry");
        
      }else{
          
          response.sendRedirect("welcome.jsp");
          p.println("ok ready to go");
      }
          
    }else{
                s.setAttribute("me","me");
           response.sendRedirect("set.jsp");
           //response.sendRedirect("set.jsp");
            p.println("ok ready to go");
       }
          
       }
       String upload=(String)s.getAttribute("upload");
      
       if(upload!=null){
           if(upload.equals("upload")){
               try{
                   //File fil=new File("S:\\Documents\\computer.jpg");
                   //fil.mkdir();
                 DiskFileItemFactory f=new DiskFileItemFactory();
                 ServletFileUpload a=new ServletFileUpload(f);
                 List<FileItem> file=a.parseRequest(request);
                 for(FileItem img:file){
                    
                     if(img.getSize()==0){
                         response.sendRedirect("data.jsp");
                     }
                     //img.write(fil);
                     String name=user+i+".jpg";
                     //img.write(new File("S:\\Documents\\"+user+"\\"+name));
                    img.write(new File("S:\\project1\\LoginApp\\web\\"+user+"\\"+name));//using absolute path.
                    // img.write(new File("name"));//use relative
                    p.println("uploaded"+img.getName());
                     i++;
                     if(i>=4){
                         i=0;
                     }
                     
                 }
               }catch(Exception e){
                   
                   System.out.println("error"+e);
               }
               }
               
       }
    }

  
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
