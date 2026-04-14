<%-- 
    Document   : registerClub.jsp
    Created on : 14 Apr 2026, 4:03:36 pm
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
        <h2>Club Registration</h2>
    <style>
        form {
        background: white;
        padding: 20px;
        width: 350px;
        margin: auto;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        input, select {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        }
        input[type="submit"] {
        background-color: #3498db;
        color: white;
        border: none;
        cursor: pointer;
        }
        input[type="submit"]:hover {
        background-color: #2980b9;
        }
        h2 {
        text-align: center;
        }
    </style>
    <form action="processRegistration.jsp" method="post">
        Student Name: <input type="text" name="studentName"><br><br>
        Matric Number: <input type="text" name="matricNumber"><br><br>
    Selected Club:
    <select name="club">
        <option>Robotics Club</option>
        <option>Sports Club</option>
        <option>Music Club</option>
    </select><br><br>
        <input type="submit" value="Register">
    </form>
        <%@ include file="footer.jsp" %>
    </body>
</html>
