<%-- 
    Document   : data
    Created on : Dec 6, 2017, 12:51:36 PM
    Author     : surendra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <% response.setHeader("cache-control","no-cache,no-store,must-validate");
        String film=(String)request.getParameter("film");
         HttpSession ss=request.getSession();
         String find=(String)request.getParameter("find");
         if(find!=null){
            film=find+".MP4";
         }
         ss.setAttribute("upload","upload");
         int i=0;
            String user=(String)ss.getAttribute("user");
            String gname1=user+0+".jpg";
            String gname2=user+1+".jpg";
            String name=user+".jpg";
             String gname3=user+2+".jpg";
            String path=user+"\\"+name;
            String gal1=user+"\\"+gname1;
            String gal2=user+"\\"+gname2;
             String gal3=user+"\\"+gname3;
          
       // String user=(String)application.getAttribute("user");//(String) session.getAttribute("user");//null pointer exception area!!!
        
            if(user==null){
          
            response.sendRedirect("Loginjsp.jsp");
            
        }
            
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My stuff</title>
        <link type="text/css" rel="stylesheet" href="styledata.css"/>
    </head>
    <body>
 <div id="main">
                        <div id="header">
                            <ul>
                                <li><a href="welcome.jsp">Home</a></li>
                                 <li>New feeds</li>
                                 <li>Help</li>
                                  <li>Search</li>
                                  
                                  <li><form action="data.jsp">
                                  <input type="text" name="find">
                               
                                  <input type="submit" value="go">
                                  </form>
                                  </li>
                            </ul>
                        </div> 
            <div id="body"> <div id="vidhead" ><p>Videos</p></div>
             <a href="data.jsp?film=video1.mp4"> <div id="b1"><img src="video1.jpg" height="180" width="200"/><p>video1</p></div></a>
             <a href="data.jsp?film=video2.MP4">   <div id="b1"><img src="video2.jpg" height="185" width="200"/><p>video2</p></div></a>
             <a href="data.jsp?film=video3.MP4"> <div id="b1"><img src="video1.jpg" height="180" width="200"/><p>video3</p></div></a>
             <a href="data.jsp?film=video2.MP4">   <div id="b1"><img src="video2.jpg" height="185" width="200"/><p>video2</p></div></a>
             <a href="data.jsp?film=video1.mp4"> <div id="b1"><img src="video1.jpg" height="180" width="200"/><p>video1</p></div></a>
             <a href="data.jsp?film=video3.MP4">   <div id="b1"><img src="video2.jpg" height="185" width="200"/><p>video3</p></div></a>
            </div>
     <div id="player">
         <video src="<%=film%>" controls autoplay width="750" height="500"/> 
            </div>
          <div id="gallery">
                      <div id="galhead" ><p   >My gallery</p></div>
                <div id="b3">
                    <a href="<%=gal1%>"><img src="<%=gal1%>" width="150" height="170"/></a>
                 
                </div>
                    <div id="b4"><a href="<%=gal2%>"><img src="<%=gal2%>" width="150" height="171"/></a></div>
                    <div id="b5"><a href="<%=gal3%>"><img src="<%=gal3%>" width="150" height="171"/></a></div>
                    <div id="b6"><a href="<%=gal2%>"><img src="<%=gal2%>" width="150" height="171"/></a></div>
                    <div id="b7"><a href="<%=gal3%>"><img src="<%=gal3%>" width="150" height="171"/></a></div>
                    <div id="b8"><a href="<%=gal2%>"><img src="<%=gal2%>" width="150" height="171"/></a></div>
                    <div id="b7"><a href="<%=gal3%>"><img src="<%=gal3%>" width="150" height="171"/></a></div>
                    <div id="b3"><a href="<%=gal1%>"><img src="<%=gal1%>" width="150" height="170"/></a></div>
                    <div id="b8"><a href="<%=gal2%>"><img src="<%=gal2%>" width="150" height="171"/></a></div>
                    <div id="b3"><a href="<%=gal1%>"><img src="<%=gal1%>" width="150" height="170"/></a></div>  
          </div> 
          
                
</div>
                    
           
                    
             
                 
     <div id="upload"><br>
 
         upload your photo.
         <form method="post" action="Change" enctype="multipart/form-data" multiple>
             <input type="file" name="file">
             <input type="submit" value="upload">
         </form>
     </div>

      
    </body>
</html>
