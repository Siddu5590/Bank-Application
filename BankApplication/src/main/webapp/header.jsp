<%@page import="com.Bank.DTO.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	
}
html, body{
    height: 100%;
    width: 100%;
    background-color: silver;
}
nav{
	
    padding: 10px 30px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: #333b3c;
    position: relative;
    height: 70px;
}
.logo a{
    text-decoration: none;
    color: #fff;
    font-size: 25px;
}
nav ul{
    display: flex;
    gap: 30px;
    text-align: center;
    margin-top:15px;
}
nav ul li{
    list-style-type: none;
    position:relative;
}
nav ul li a{
    text-decoration: none;
    color: #fff;
    font-size: 25px;
}
.menu-icon{
    display: none;
    cursor:pointer;
}
.menu-icon{
    color: #fff;
    font-size: 30px;
    
}
	
        .logout{
            background-color: red;
            color: white;
            padding: 7px;
            outline: none;
            border: none;
            text-transform: uppercase;
            border-radius: 5px;
        }
        
        nav ul li::after{
            content: '';
            height: 3px;
            width: 0;
            background-color: green;
            position: absolute;
            left: 0;
            bottom: -6px;
            transition: 0.3s;
        }
        nav ul li:hover::after{
           width: 100%;
        }
        .navbar{
        	height:50px;
        }
        .navbar a{
        	color:white;
        }
@media (max-width:600px) {
    nav ul{
        position: absolute;
        top: 50px;
        left: 0;
        right: 0;
        flex-direction: column;
        text-align: center;
        background-color: #004274;
        backdrop-filter:blur(15px);
        gap: 0;
        overflow: hidden;
        
        
    }
    nav ul li{
        padding: 20px;
        
    }
    .menu-icon{
        display: block;
    }
    #menulist{
        transition: all 0.5s;
    }
    .navbar{
        	height:50px;
        	display:flex;
        	justify-content:space-between;
        }
        .navbar a{
        	color:white;
        }
}
        
.navbar .user{
	margin-left:40%;
}

</style>
</head>
<body>
<%Customer c=(Customer)session.getAttribute("customer"); %>
<nav>
	<div class="logo">
	<a href="dashboard.jsp">Indian Bank</a>
	</div>
	<ul id="menulist">
	<%if(c.getAccno()==1100110011){ %>
        <li><a href="adminDashboard.jsp">Admin Access</a></li>
        <%} %>
	
		<li><a href="dashboard.jsp">Home</a></li>
		<li><a href="about.jsp">About</a></li>
		<li><a href="contactUs.jsp">Contact Us</a></li>
		<li><a href="profile.jsp">View Profile</a></li>
		<li>
            <form action="logout" method="post">
              <input type="submit" name="logout" value="Logout" class="logout" id="logout">
             </form>
            </li>
	</ul>
	<div class="menu-icon">
	<i class="fa-solid fa-bars" onclick="toggleMenu()"></i>
	</div>

    

    <script>
        let menulist=document.getElementById('menulist')
        menulist.style.maxHeight="opx";

        function toggleMenu()
        {
            if(menulist.style.maxHeight =="0px")
        {
            menulist.style.maxHeight="300px"
        }
        else{
            menulist.style.maxHeight="0px"
        }
        }
    </script>
</nav>
<div class="navbar bg-primary mt-2">
  <div class="container-fluid">
    <a class="user navbar-brand text-center" href="#">Welcome, <%=c.getName() %></a>
    <a class="navbar-brand" href="#">Account Number : <%=c.getAccno() %></a>
  </div>
</div>

</body>
</html>