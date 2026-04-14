<%-- 
    Document   : memberDirectory
    Created on : 14 Apr 2026, 4:09:40 pm
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
    table {
        width: 50%;
        margin: auto;
        border-collapse: collapse;
        background: white;
    }

    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: center;
    }

    th {
        background-color: #3498db;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    h2 {
        text-align: center;
    }
</style>

<h2>Club Member Directory</h2>

<%
    ArrayList<String> members = (ArrayList<String>) application.getAttribute("members");
%>

<table>
    <tr>
        <th>Member Details</th>
    </tr>

<%
    if (members != null) {
        for(String member : members) {
%>
    <tr>
        <td><%= member %></td>
    </tr>
<%
        }
    } else {
%>
    <tr>
        <td>No members registered yet.</td>
    </tr>
<%
    }
%>

</table>

    <%@ include file="footer.jsp" %>
    </body>
</html>
