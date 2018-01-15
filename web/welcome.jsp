
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%
  HttpSession ss=request.getSession();
           String   user=(String)ss.getAttribute("user");   
  String welcome="Dear "+user+",Welcome...";
           try{ response.setHeader("cache-control","no-cache,no-store,must-validate");
           
           
            //String user= (String)application.getAttribute("user");//(String)session.getAttribute("user");
           //System.out.println(name);
           if(user==null){
                response.sendRedirect("Loginjsp.jsp");
            }else{
             //s="dear "+user+" you are logged in";
            }}catch(Exception e){
                response.sendRedirect("Loginjsp.jsp");
               // RequestDispatcher rd=request.getRequestDispatcher("Loginjsp.jsp");
            }
           SimpleDateFormat f=new SimpleDateFormat("E YYYY.MM.dd");
           Date d=new Date();
           String dd=f.format(d);
           
            %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged in</title>
        <link type="text/css" rel="stylesheet" href="style1.css"/>
    </head>
    <body>
        <div id="main">
            <div id="top">
               <p id="title"> Webdemo</p>
               <h2 id="date"><%=dd%></h2>
            </div>
            
         <div id="list">
       
        
        <img id="img" src="globe.png" "/>
        
        <div id="header">
            <h2><%=welcome%></h2>
        </div>
  </div>
        <div id="menu"> 
        <ul >
             <li><a>Features</a>
                  <ul>
                      <a href="data.jsp"><li> My data</li></a>
                       <a ><li>bb</li></a>
                        <a><li >cc</li></a>
                  </ul>
                      
              </li>
                <li><a >Latest</a>
                <ul>
                  <a ><li>aa</li></a>
                      <a ><li>bb</li></a>
                        <a><li>cc</li></a>
                </ul>
                </li>
                <li><a >My Account</a>
                 <ul>
                <a href="logout.jsp">  <li>log out</li></a>
                       <a href="set.jsp"><li>Account Setting</li></a>
                        <a><li >cc</li></a>
                </ul>
                </li>
                <li ><a>About us</a>
                 <ul>
                     <a href="aboutus.jsp"><li>our detail</li></a>
                       <a><li>bb</li></a>
                        <a ><li>cc</li></a>
                  </ul></li>
        </ul>
            
           
        </div>    
        
       <div id="last">
        <div id="image">
            <img src="com.jpg" alt="Early computer:">
            <dl>Early computer:</dl>
            <p>The history of computing hardware covers the developments from early simple devices to aid calculation to modern day computers. Before the 20th century, most calculations were done by humans. Early mechanical tools to help humans with digital calculations, such as the abacus, were called "calculating machines", by proprietary names, or even as they are now, calculators. The machine operator was called the computer.

The first aids to computation were purely mechanical devices which
required the operator to set up the initial values of an elementary 
arithmetic operation, then manipulate the device to obtain the result.
Later, computers represented numbers in a continuous form, for instance
distance along a scale, rotation of a shaft, or a voltage. Numbers could
also be represented in the form of digits, automatically manipulated by 
a mechanical mechanism. Although this approach generally required more
complex mechanisms, it greatly increased the precision of results.
A series of breakthroughs, such as miniaturized transistor computers,
and the integrated circuit, caused digital computers to largely replace
analog computers. The cost of computers gradually became
so low that by the 1990s,
personal computers, and then, in the 2000s, mobile computers, 
(smartphones and tablets) became ubiquitous in industrialized countries.</p>
        </div>
           <div id="side">
               <img src="computer.jpg"/>
               <dl>Modern Computer:</dl>
               <p>Although computers have, over the years, been defined in
                   various ways, most of these definitions are, to say the 
                   least, pretty outdated. In a world of smartphones,
                   tablets and other mobile computing devices, how, really,
                   does one define a computer? The one thing that should be
                   obvious right off the bat is that our notion of computers 
                   and computing has been radically transformed over the past
                   decade or so. So, what is a computer in the 21st Century and how
                   have these amazing devicechanged our lives? Here is the modern
                   definition of a computer; </p>
           </div>
      
       </div> <div id="footer">
            <br>This is footer.
          
            
         </div> </div> </body>
</html>
