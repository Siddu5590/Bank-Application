<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Balance</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
    body{
    	background-color:silver;
    }
        .check-balance{
        	position: absolute;
            top: 250px;
            left: 500px;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            width: 30%;
            border-radius: 10px;
        }
        .check-balance h2{
            text-align: center;
            margin-top: 20px;
        }
        .check-balance div{
            margin: 20px;
        }
        .check-balance .btn{
           margin: 20px;
        }
        .cancel{
        	position:relative;
        	top:-20px;
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
<%String success=(String)request.getAttribute("success"); 
	if(success!=null) {%>
	<h4 class="success"><%=success %></h4>
	<%}%>
	
	<%String fail=(String)request.getAttribute("fail");
	if(fail!=null) {%>
	<h4 class="fail"><%=fail %></h4>
	<%}%>
<form action="checkBalance" method="post" class="check-balance">
        <h2>Check Balance</h2>
        
        <div class="mb-2">
          <label for="exampleInputPassword1" class="form-label">Enter Your Pin</label>
          <input type="password" name="pin" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Pin">
        </div>
       <center><button type="submit" class="btn btn-primary">Check Balance</button></center>
      <center><a href="dashboard.jsp" class="btn btn-primary cancel">Cancel</a></center>
      </form>
</body>
</html>