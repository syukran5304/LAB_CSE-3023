<%-- 
    Document   : feeCalculator
    Created on : 14 Apr 2026, 4:09:18 pm
    Author     : MSMZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <style>
    .box {
        background: white;
        padding: 20px;
        width: 350px;
        margin: auto;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        text-align: center;
    }

    input {
        padding: 8px;
        margin: 10px;
        width: 80%;
    }

    button {
        background: #27ae60;
        color: white;
        border: none;
        padding: 10px;
        cursor: pointer;
    }

    button:hover {
        background: #219150;
    }
</style>
<div class="box">
    <h2>Fee Calculator</h2>
    <form method="post">
        <input type="number" name="activities" placeholder="Enter activities">
        <br>
        <button type="submit">Calculate</button>
    </form>
<%
    String actStr = request.getParameter("activities");
    if (actStr != null) {
        int activities = Integer.parseInt(actStr);
        double total = activities * 10.0;
%>
        <h3>Total Fee: RM <%= String.format("%.2f", total) %></h3>
<%
    }
%>
</div>
    <%@ include file="footer.jsp" %>
    </body>
</html>