<%-- 
    Document   : processRegistration
    Created on : 14 Apr 2026, 4:03:54 pm
    Author     : MSMZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <style>
    .card {
        background: white;
        padding: 20px;
        width: 400px;
        margin: auto;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    h2 {
        text-align: center;
    }

    p {
        font-size: 16px;
        margin: 10px 0;
    }
</style>
<%
    String name = request.getParameter("studentName");
    String matric = request.getParameter("matricNumber");
    String club = request.getParameter("club");

    // Create a simple string record
    String record = name + " (" + matric + ") - " + club;

    // Get existing list or create new one
    ArrayList<String> members = (ArrayList<String>) application.getAttribute("members");

    if (members == null) {
        members = new ArrayList<String>();
    }

    members.add(record);

    // Save back to application scope
    application.setAttribute("members", members);
%>

<div class="card">
    <h2>Registration Successful</h2>
    <p><%= record %></p>
    <a href="memberDirectory.jsp">View Member Directory</a>
</div>
    <%@ include file="footer.jsp" %>
    </body>
</html>
