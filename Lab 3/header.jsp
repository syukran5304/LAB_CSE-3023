<%-- 
    Document   : header
    Created on : 14 Apr 2026, 4:18:11 pm
    Author     : MSMZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Club Management System</title>
        <style>
            body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            background-color: #f4f6f9;
        }

        header {
            background-color: #2c3e50;
            padding: 15px;
            color: white;
            text-align: center;
        }

        nav {
            background-color: #34495e;
            padding: 10px;
            text-align: center;
        }

        nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }

        nav a:hover {
            color: #f1c40f;
        }

        .container {
            padding: 20px;
        }
        </style>
    </head>
    <body>
        <header><h1>Club Management System</h1></header>
        <nav>
            <a href="registerClub.jsp">Registration</a>
            <a href="feeCalculator.jsp">Fee Calculator</a>
            <a href="memberDirectory.jsp">Member Directory</a>
        </nav>
    </body>
</html>
