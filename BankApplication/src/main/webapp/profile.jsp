<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Profile</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style>
body{
	background-color:silver;
}
.profile h3{
	margin:20px;
}

.table{
	margin:40px 450px;
	width:33%;
	height:300px;
	box-shadow:
		
	
}
.table th{
	padding:10px 30px;
	background-color:wheat;
	padding-bottom:20px;
	
}
.table td{
	padding:10px 30px;
	padding-bottom:20px;
	
}
.profile .edit{
	
	margin-right:100px;
}
.profile i{
	
	margin-right:10px;
}
	
</style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="profile">
<center><h3>Heyy, <%=c.getName() %> Welcome to Your Profile</h3></center>
<table class="table table-borderless">
  <thead>
    <tr>
      <th scope="col">Account Number:</th>
      <td><%=c.getAccno() %></td>
    </tr>
    <tr>
      <th scope="col">Account Holder Name:</th>
      <td><%=c.getName() %></td>
    </tr>
    <tr>
      <th scope="col">Phone Number:</th>
      <td><%=c.getPhone() %></td>
    </tr>
    <tr>
      <th scope="col">Mail Id:</th>
      <td><%=c.getMail() %></td>
    </tr>
    <tr>
      <th scope="col">Account Type:</th>
      <td>Savings Account</td>
    </tr>
    <tr>
      <th scope="col">Your Balance:</th>
      <td>$. <%=c.getBal() %></td>
    </tr>
  </thead>
</table>

<center><a href="updateProfile.jsp" class="btn btn-primary edit"><i class="fa-solid fa-user-pen edit-profile "></i></i>Edit Profile</a>
<a href="resetPin.jsp" class="btn btn-primary"><i class="fa-solid fa-pen-to-square edit-profile "></i>Reset PIN</a></center>
</div>
</body>
</html>