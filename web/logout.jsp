<%-- 
    Document   : logout
    Created on : Dec 24, 2017, 4:14:26 PM
    Author     : surendra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
        session.removeAttribute("user");
String a=(String)session.getAttribute("user");%>

<jsp:forward page="Loginjsp.jsp"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
    </body>
</html>
