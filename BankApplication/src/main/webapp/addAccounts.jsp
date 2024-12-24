<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Account</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .sidebar {
            height: 100vh;
            overflow-y: auto;
            background-color: #1abc9c;
        }
        
        .sidebar a {
            color: #ffffff;
            padding: 15px;
            display: block;
            text-decoration: none;
            font-weight: bold;
            margin: 5px 0;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        
        .sidebar a:hover {
            background-color: #16a085;
        }
        
        .content {
            padding: 20px;
            background-color: #f8f9fa;
            min-height: 100vh;
        }
        
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .navbar {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .form-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .btn btn-secondary:hover {
            background: #1abc9c;
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
   <%@include file="admin.jsp" %>

    <div class="d-flex">
        <!-- <div class="sidebar p-3">
            <h4 class="text-white">Menu</h4>
            <a href="#dashboard">Dashboard</a>
            <a href="#users">Manage Users</a>
            <a href="#settings">Settings</a>
            <a href="#reports">Reports</a>
            <a href="#logout">Logout</a>
        </div> -->

        <div class="content flex-grow-1">
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card">
                    <%String success=(String)request.getAttribute("success");
					if(success!=null) {%>
					<h3 class="success"><%=success %></h3>
					<%} %>
					
					<%String fail=(String)request.getAttribute("fail");
					if(fail!=null) {%>
					<h3 class="fail"><%=fail %></h3>
					<%} %>
                        <div class="card-header bg-primary text-white">Add New Account</div>
                        <div class="card-body">
                            <form action="addAccount" method="post">
                                
                                <div class="mb-3">
                                    <label for="Lname" class="form-label">Name</label>
                                    <input type="text" class="form-control" name="name" id="name" placeholder="Enter name">
                                </div>
                                <div class="mb-3">
                                    <label for="Email ID" class="form-label">Email ID</label>
                                    <input type="email" class="form-control" name="mail" id="Email ID" placeholder="Enter Email ID">
                                </div>
                                <div class="mb-3">
                                    <label for="Phone number" class="form-label">Phone number</label>
                                    <input type="tel" class="form-control" name="phone" id="Phone number" placeholder="Enter Phone number">

                                </div>
                                
                                <div class="mb-3">
                                    <label for="Password" class="form-label">Password</label>
                                    <input type="Password" class="form-control" name="pin" id="Password" placeholder="Enter Password">
                                </div>
                                <div class="mb-3">
                                    <label for="Confirm Password" class="form-label">Confirm Password</label>
                                    <input type="Password" class="form-control" name="confirm" id="Confirm Password" placeholder="Enter Confirm Password">
                                </div>
                                
                                <%Customer c1=(Customer)session.getAttribute("customer"); %>
                                <div class="form-actions">
                                    <button type="submit" class="btn btn-success">Submit</button>
                                    <a href="adminDashboard.jsp" class="btn btn-secondary">Back to Dashboard</a>
                                    
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
    