<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Loan Result</title>
</head>
<body>
<center>
    <h2>Perform Car Loan Calculation</h2>

    <fieldset style="width:350px;">
    <%
        // Get parameters
        String amountStr = request.getParameter("amount");
        String yearsStr = request.getParameter("years");

        double amount = 0;
        int years = 0;
        if (amountStr != null && yearsStr != null) {
            amount = Double.parseDouble(amountStr);
            years = Integer.parseInt(yearsStr);
        }

        double rate = 0.05; // 5%
        double totalInterest = amount * rate * years;
        double totalPayment = amount + totalInterest;
        double monthlyPayment = totalPayment / (years * 12);
    %>

    <!-- display the output -->
    <p><b>Details of car loan:</b></p>
    <p>Loan Request : <%= amount %></p>
    <p>Period of payment : <%= years %> years</p>
    <p>Interest Rate : 5%</p>
    <p>Total Interest : <%= totalInterest %></p>
    <p><b>Total Loan (+ interest) : <%= totalPayment %></b></p>
    <p>Monthly Payment : <%= monthlyPayment %></p>

    <br/>
    <a href="calculateCarLoan.html">Back</a>

    </fieldset>
</center>
</body>
</html>