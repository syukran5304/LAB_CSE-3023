<%-- 
    Document   : populateArray
    Created on : 14 Apr 2026, 2:54:38 pm
    Author     : MSMZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin: auto;
            text-align: center;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
        }
        th {
            background-color: #d4af37;
        }
        </style>
    </head>
    <body>
        <center>
            <h2>Read Java array and populate it into HTML table</h2>
        </center>

        <%
        String[] salesman = {"Salesman 1", "Salesman 2", "Salesman 3"};
        int[][] sales = {
        {2500, 2100, 2200}, 
        {2000, 1900, 2400}, 
        {1800, 2200, 2450}  
        };
        %>

    <table>
    <tr>
        <th>Salesman</th>
        <th>Jan</th>
        <th>Feb</th>
        <th>Mar</th>
    </tr>

        <%
        for (int i = 0; i < salesman.length; i++) {
        %>
    <tr>
        <td><%= salesman[i] %></td>
        <td><%= sales[i][0] %></td>
        <td><%= sales[i][1] %></td>
        <td><%= sales[i][2] %></td>
    </tr>
        <%
        }
        %>
    </table>
    </body>
    &copy; Syukran
</html>
