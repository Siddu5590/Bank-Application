<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <style>
    *{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
}
body{
    background: url("Bank.jpg") no-repeat;
    background-size: cover;
}
#form{
    position: relative;
    top: 100px;
}
#signup{
    position: relative;
    top: 40px;
}
.form{
   display: flex;
   flex-direction: column;
   height: auto;
   width: 400px;
   border: 1px solid black;
   align-items: center;
   margin: auto;
   margin-top: 30px;
   background-color: rgba(0, 0, 0, 0.5);
   box-shadow: inset -5px -5px rgba(0, 0, 0, 0.2);
   border-radius: 25px;
   
}
.form h1{
    color: white;
    font-size: 2rem;
    text-transform: uppercase;
    margin: 20px;
}
.box{
    padding: 10px;
    margin: 10px;
    width: 65%;
    border: none;
    outline: none;
    border-radius: 20px;
    background-color: rgba(0, 0, 0, 0.5);
    box-shadow: inset -3px -3px rgba(0, 0, 0, 0.2);
    color: white;
    font-size: 1rem;
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
    -ms-border-radius: 20px;
    -o-border-radius: 20px;
}
.check{
    margin-left: -250px;
    height: 15px;
}
.terms{
    position: relative;
    top: -15px;
    color: white;
}
.forgot{
    color: white;
    position: relative;
    left: 80px;
    font-size: 15px;
    text-decoration: none;
}
#submit{
    padding: 10px 20px;
    margin-top: 25px;
    width: 50%;
    background-color: red;
    color: white;
    text-transform: uppercase;
    border: none;
    outline: none;
    border-radius: 20px;
    font-size: 1rem;
}

#submit:hover{
    cursor: pointer;
    background-color: rgba(255, 255, 255, 0.1);
    color: snow;
}
::placeholder{
    color: white;
    opacity: 0.7;
}
.create-account
{
    color: white;
    margin: 20px;
}
.create-account a{
    
    color: white;
}
.error {
            color: red;
            background-color:#fff;
            font-size: 12px;
            display: none;
            padding:3px;
        }
.success{
	color:white;
	margin:10px;
	text-align:center;
}
.fail{
	color:red;
	margin:10px;
}
    </style>

    
</head>
<body>
    <form action="login" method="post" class="form" id="form">
<h1>Login</h1>

<%String success=(String)request.getAttribute("success");
if(success!=null) {%>
<h3 class="success"><%=success %></h3>
<%} %>

<%String fail=(String)request.getAttribute("fail");
if(fail!=null) {%>
<h3 class="fail"><%=fail %></h3>
<%} %>

<input type="text" name="accno" id="accno" class="box" placeholder="Enter Account Number" id="accno">
<span class="error" id="accnoError">Please enter a valid account number.</span>

<input type="password" name="pin" id="pin" class="box" placeholder="Enter your Pin" id="pin">
 <span class="error" id="pinError"><i class="fa-solid fa-circle-info"></i>Password must contain at least 4 numeric characters.</span>

<a href="forgotPassword.jsp" class="forgot">Forgot your pin?</a>

<input type="submit" value="Login" id="submit">
<div class="create-account">
<p>Don't have an Account? <a href="signup.jsp">Create new Account</a></p>
</div>
    </form>
    
</body>
</html>