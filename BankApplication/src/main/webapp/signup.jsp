<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
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
.success{
	color:green;
	margin:10px;
}
.fail{
	color:red;
	margin:10px;
}
    </style>
</head>
<body>
    <form action="signup" method="post" class="form" id="signup">
<h1>Sign Up</h1>
<%String success=(String)request.getAttribute("success");
if(success!=null) {%>
<h3 class="success"><%=success %></h3>
<%} %>

<%String fail=(String)request.getAttribute("fail");
if(fail!=null) {%>
<h3 class="fail"><%=fail %></h3>
<%} %>

<input type="text" name="name" class="box" placeholder="Enter Your Name" required>
<input type="text" name="phone" class="box" placeholder="Enter Your Phone Number" required>
<input type="email" name="mail" class="box" placeholder="Enter Your Mail ID" required>
<input type="password" name="pin" class="box" placeholder="Enter your Pin" required>
<input type="password" name="confirm" class="box" placeholder="Confirm your Pin" required>
<input type="checkbox" class="check" required><label for="" class="terms">Accept All Terms and Condition</label>

<input type="submit" value="Sign Up" id="submit">
<div class="create-account">
<p>Already have an Account? <a href="login.jsp">Login Here</a></p>
</div>
    </form>
</body>
</html>