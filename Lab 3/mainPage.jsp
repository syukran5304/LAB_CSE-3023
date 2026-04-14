<%--
    Document   : mainPage
    Created on : 14 Apr 2026, 3:53:24 pm
    Author     : MSMZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
    <body>
        <%@ include file="headerPage.jsp" %>
    <center>
        <h2>Using JSP Include directive</h2>
        
    <p style="color:red; width:500px;">
        Java Server Page (JSP) is a technology for controlling the content 
        or appearance of Web pages through the use of servlets, small programs 
        that are specified in the Web page and run on the Web server to modify 
        the Web page before it is sent to the user who requested it.
    </p>
    </center>
    <!-- Include Footer -->
    <%@ include file="footerPage.jsp" %>
    </body>
</html>
