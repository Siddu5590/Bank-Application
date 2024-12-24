<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
    body{
    	background-color:silver;
    }
    .update-profile{
    	margin:20px;
		
    }
        .update{
        	margin-top:40px;
            position: absolute;
            left: 35%;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            width: 30%;
            border-radius: 10px;
        }
        .update h2{
            text-align: center;
            margin: 10px;
        }
        .update div{
            margin: 20px;
        }
        .update .btn{
           margin: 20px;
        }
        .back{
            text-decoration: none;
            color: white;
            border-radius: 5px;
            
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
<div class="update-profile">
<center><h3>Heey, <%=c.getName() %> Update Your Profile here</h3></center>
<%String success=(String)request.getAttribute("success"); 
	if(success!=null) {%>
	<h5 class="success"><%=success %></h5>
	<%}%>
	
	<%String fail=(String)request.getAttribute("fail");
	if(fail!=null) {%>
	<h5 class="fail"><%=fail %></h5>
	<%}%>
    <form action="updateprofile" method="post" class="update">
        <h2>Update Profile</h2>
        <div class="mb-2">
        
          <label for="exampleInputEmail1" class="form-label">Enter your name</label>
          <input type="name" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your name" value="<%=c.getName()%>">
        </div>
        <div class="mb-2">
          <label for="exampleInputPassword1" class="form-label">Enter your phone</label>
          <input type="text" name="phone" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Phone" value="<%=c.getPhone()%>">
        </div>
        <div class="mb-2">
            <label for="exampleInputPassword1" class="form-label">Enter Your Mail id</label>
            <input type="email" name="mail" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Mail" value="<%=c.getMail()%>">
          </div>
        
       <center><button type="submit" class="btn btn-primary">Update Profile</button>
       <a href="profile.jsp" class="back btn btn-primary">BACK</a></center>
      </form>
    </div>
</body>
</html>