<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Pin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
    body{
    	background-color:silver;
    }
    .reset-pin h3{
		margin:20px;
	}
        .reset{
        	margin-top:40px;
            position: absolute;
            left: 35%;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            width: 30%;
            border-radius: 10px;
        }
        .reset h2{
            text-align: center;
            margin: 10px;
        }
        .reset div{
            margin: 20px;
        }
        .reset .btn{
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
<div class="reset-pin">
<center><h3>Heey, <%=c.getName() %> Reset Your PIN here</h3></center>
<%String success=(String)request.getAttribute("success"); 
	if(success!=null) {%>
	<h5 class="success"><%=success %></h5>
	<%}%>
	
	<%String fail=(String)request.getAttribute("fail");
	if(fail!=null) {%>
	<h5 class="fail"><%=fail %></h5>
	<%}%>
    <form action="resetPin" method="post" class="reset">
        <h2>Reset PIN</h2>
        <div class="mb-2">
        
          <label for="exampleInputEmail1" class="form-label">Enter your Email</label>
          <input type="email" name="mail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your name" value="<%=c.getMail()%>">
        </div>
        <div class="mb-2">
          <label for="exampleInputPassword1" class="form-label">Enter New PIN</label>
          <input type="password" name="pin" class="form-control" id="exampleInputPassword1" placeholder="Enter Your PIN" >
        </div>
        <div class="mb-2">
            <label for="exampleInputPassword1" class="form-label">Re-Enter New PIN</label>
            <input type="password" name="confirm" class="form-control" id="exampleInputPassword1" placeholder="Re-Enter Your PIN" >
          </div>
        
       <center><button type="submit" class="btn btn-primary">Reset PIN</button>
       <a href="profile.jsp" class="back btn btn-primary">BACK</a></center>
       
      </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>