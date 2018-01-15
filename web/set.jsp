

<%@page import="login.Datastore"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% response.setHeader("cache-control","no-cache,no-store,must-validate");
        String s="";int i=0;
         HttpSession ss=request.getSession();
         ss.removeAttribute("upload");
            String user=(String)ss.getAttribute("user");
             String code=(String)ss.getAttribute("code");
              String change=(String)ss.getAttribute("me");
              if(change!=null){
                  if(change.equals("me")){
                  s="wrong password!!";
                  i=1;
                  ss.removeAttribute("me");
                 
                  }
              }
             
          
            if(user==null){
          
            response.sendRedirect("Loginjsp.jsp");
            
        }else{
            
        }%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Setting</title>
        <link type="text/css" rel="stylesheet" href="style.css"/>
    </head>
    <body>
      
            <div id="header">
                Account Setting
            </div>
        <div id="code">
       
            Change code:<br>
            <br>
            <form method="post" action="Change">
                current code:<input type="password" name="okman"><br>
               
                <br>
                <br>
                new code:  <input type="password" name="go"><br>
                <br>
                <input type="submit" value="change">
                 <%if(i==1){%><p color="red">wrong code</p><%}%>
            </form>
        </div>
        <div id="add">
            Add info:<br>
            <br>
           update contact:<input type="password" name="code"><br>
                <br>
               add address:  <input type="password" name="code"><br>
                <br>
                 add age:  <input type="password" name="code"><br>
                <br>
                <input type="submit" value="add">
        </div>
    </body>
</html>
