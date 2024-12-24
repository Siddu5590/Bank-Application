<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
body{
	background-color:silver;
}
	.contact{
		float:left;
		width:40%;
		height:350px;
		margin-top:50px;
		margin-left:50px;
		margin-right:70px;
		padding:20px;
		border-radius:10px;
		box-shadow:0 4px 8px 0 rgba(0,0,0,0.4) 0 6px 20px 0 rgba(0,0,0,0.19);
	}
	.contact h3{
		text-align:center;
		margin-bottom:20px;
	}
	.btnn{
		margin-left:30px;
	}
	
	.address{
		margin-top:85px;
		margin-left:60px;
	}
	.address p{
		
		color:bold;
		padding:10px;
		margin-left:60px;
		font-size:20px;
	}
	
	.address a{
		text-decoration:none;
		color:black;
	}
	.address a:hover{
		
		color:blue;
	}

	.social{
		float:left;
		position:absolute;
		right:0;
		top:45%;
	}
	.social a{
		font-size:30px;
	}
	.social a:hover{
		color:blue;
		font-size:32px;
		width:100px;
	}
	
	
	.success{
	color:green;
	margin:10px;
	text-align:center;
}
.fail{
	color:red;
	margin:10px;
	text-align:center;
}
</style>
</head>
<body>
<%@include file="header.jsp" %>

<%String message=(String)request.getAttribute("message");
if(message!=null) {%>
<h4 class="success"><%=message %></h4>
<%} %>

<%String fail=(String)request.getAttribute("fail");
if(fail!=null) {%>
<h4 class="fail"><%=fail %></h4>
<%} %>
<div class="contactus">
<h4 class="text-primary m-3 text-center">For any issues please contact the concerned teams below :</h4>
	
	<form action="contact" method="post" class="contact">
	
  <h3>Send Message</h3>
  
  

  <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Email address</label>
  <input type="email" name="mail" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Enter Message here..</label>
  <textarea class="form-control" name="message" id="exampleFormControlTextarea1"></textarea>
</div>
  <button type="submit" class="btnn btn btn-primary">Submit</button>
</form>

<div class="address">
<h3>Office Adress</h3>
<p class="m-3">Indian Bank Pvt. Ltd., Head Office<br>
		Vijaynagar, Bengalore-560040,<br>
		Karnataka, India.<br><br>

		<a href="mailto:enquiry@gmail.com">enquiry@gmail.com</a>
		<div class="tel">
		<a href="telto:9998866231">+91-9998866231 , +91-98651234652</a></p>
		</div>
		<div class="social">
		<a href="https://www.facebook.com"><i class="fa-brands fa-facebook"></i></a><br>
			<a href="https://www.instagram.com"><i class="fa-brands fa-instagram"></i></a> <br>
			<a href="https://www.linkedin.com"><i class="fa-brands fa-linkedin"></i></a><br>
			<a href="https://www.youtube.com"><i class="fa-brands fa-youtube"></i></a><br>
		</div>
		

</body>
</html>