<%@page import="com.Bank.DTO.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
    .nav-item{
    	margin-right:80px;
    	margin-bottom:10px;
    }
    .nav-item a{
    	font-size:20px;
    }
        .sidebar {
            height: 100vh;
            width: 240px;
            overflow-y: auto;
            background-color: #1abc9c;
            position:absolute;
            left:0;
            padding-top: 20px;
        }

        .sidebar a {
            color: #fff;
            text-decoration: none;
            padding: 10px 15px;
            display: block;
            border-radius: 5px;
            margin: 15px 10px;
            font-size:20px;
        }
        .logout-button{
        	position:relative;
        	top:-5px;
        	
        }
        .text-center{
        	margin-top:13px;
        }
        .logout-button input{
        	border:none;
        	background-color:transparent;
        	width:100px;
        	color:white;
        	border-radius:5px;
        }
        
        
        .logout-button i{
        	margin-right:5px;
        	color:white;
        }

        .sidebar a:hover {
            background-color: #495057;
        }

        .content {
            margin-left: 260px; /* Leave space for the sidebar */
            padding: 20px;
        }
        
        }

    </style>
</head>
<body>
	<%Customer c=(Customer)session.getAttribute("customer"); %>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <!-- Logo -->
            <a class="navbar-brand" href="#">
                <i class="bi bi-box-fill"></i> Indian Bank
            </a>
            
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <!-- Navigation links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">
                            <i class="fa-solid fa-user"></i> welcome Admin, <%=c.getName() %>
                        </a>
                    </li>
                    
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="sidebar">
        <h4 class="text-center text-white">Admin Dashboard</h4>
        <a href="adminDashboard.jsp">
            <i class="bi bi-speedometer2"></i> Dashboard
        </a>
        <a href="viewAccounts.jsp">
            <i class="bi bi-people-fill"></i> View Accounts
        </a>
        
        <a href="viewTransaction.jsp">
            <i class="bi bi-cash-stack"></i> View Transactions
        </a>
        <a href="dashboard.jsp">
            <i class="bi bi-person-circle"></i> View Profile
        </a>
            <a>
            <form action="logout" method="post" class="logout-button">
            <i class="bi bi-box-arrow-right"></i><input type="submit" value="Logout" name="logout" >
            </form>
            </a>
    </div>

</body>
</html>

