<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deposit Amount</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body{
            background-color: silver;
        }
        .deposit{
            position: absolute;
            top: 250px;
            left: 500px;
            height: auto;
            width: 30%;
            padding: 20px;
            border-radius: 5px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            
        }
        .deposit h1{
            margin-bottom: 30px;
            text-align: center;
        }
        .deposit-box{
            margin: 10px;
            width: 250px;
            border-radius: 5px;
            margin-left: 80px;
            outline:none;

        }
        .btn
        {
            width: 150px;
            outline: none;
            border: none;
            background-color: blue;
            color: white;
            padding: 4px;
            text-align: center;
            margin-left: 110px;
        }
        .back{
            text-decoration: none;
            color: white;
            background-color: blue;
            padding: 5px;
            margin-left:10px;
            border-radius: 5px;
            position: relative;
            top: 3px;
            
        }
        .success{
        	margin-top:20px;
        	text-align:center;
        }
        .fail{
        	text-align:center;
        	margin-top:20px;
        }
    </style>
</head>
<body>
<%@include file="header.jsp" %>
<%String deposit=(String)request.getAttribute("deposit");
	if(deposit!=null) {%>
	<h5 class="success"><%=deposit %></h5>
	<%}%>
	<%String success=(String)request.getAttribute("success"); 
	if(success!=null) {%>
	<h5 class="success"><%=success %></h5>
	<%}%>
	
	<%String fail=(String)request.getAttribute("fail");
	if(fail!=null) {%>
	<h5 class="fail"><%=fail %></h5>
	<%}%>
    <form action="deposit" method="post" class="deposit">
        <h1>Deposit Here</h1>
        <input type="text" class="deposit-box" name="amount" placeholder="Enter Amount to deposit" required="required"><br>
        <input type="text" class="deposit-box" name="accno" placeholder="Enter Account Number" value="<%=c.getAccno()%>" required="required"> <br>
        <input type="password" class="deposit-box" name="pin" placeholder="Enter Your Pin" required="required"><br><br>
        <input type="submit"  value="Deposit Amount" class="btn">
        <a href="dashboard.jsp" class="back">BACK</a>
    </form>
      
</body>
</html>