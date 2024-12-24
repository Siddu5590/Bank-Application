<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Bank.DTO.Transaction"%>
<%@page import="com.Bank.DAO.TransactionDAOImpl"%>
<%@page import="com.Bank.DAO.TransactionDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.Bank.DAO.CustomerDAOImpl"%>
<%@page import="com.Bank.DAO.CustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<style>
	
	 .content {
            padding: 20px;
            margin-left:260px;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .content h1{
        	text-align:center;
        }
        .content a{
            text-decoration: none;
        }
        .content a:hover{
            opacity: 0.8;
            
        }
        .content .row{
        	margin:30px;
        	margin-left:150px;
        	
        	
        }
       .card-body{
       		box-shadow: 0 -8px 4px 0 rgba(10, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 10, 0, 0.19);
       	
       }
       .card-body:hover{
        	box-shadow: 0 8px 12px 0 rgba(0, 0, 0, 0.2), 0 12px 30px 0 rgba(0, 0, 0, 0.19);
        	
       }
       .trans{
       		margin-left:250px;
       	
       }
       .trans h3 {
			margin: 10px;
	}
	.trans a{
		text-decoration:none;
		color:black;
	}
	
	.table td{
	text-align:center;
	}
	
</style>
</head>
<body>
<%@include  file="admin.jsp" %>
<%CustomerDAO cdao=new CustomerDAOImpl();
List<Customer> lst=cdao.getCustomer();
TransactionDAO tdao=new TransactionDAOImpl();
List<Transaction> tr=tdao.getTransaction();%>
<!-- Main Content -->
<div class="admin">
    <div class="content flex-grow-1" >
    <h1>Welcome to admin dashboard</h1>
            <div class="row mb-4 me-2" >
               <div class="col-md-3" >
               <a href="addAccounts.jsp">
                <div class="card text-center" >
                    <div class="card-body" style="background-color:white; color: black;border-radius: 10px ">
                        <h5 class="card-title">Total Accounts</h5><hr>
                        <p class="card-text fs-4"><%=lst.size() %></p>
                    </div>
                </div></a>	
            </div>
                <div class="col-md-3">
                    <a href="viewAccounts.jsp">
                        <div class="card text-center">
                            <div class="card-body" style="background-color:white; color: black; border-radius: 10px">
                                <h5 class="card-title">Delete Account</h5><hr>
                                <p class="card-text fs-4">0</p>
                            </div>
                        </div></a>
                </div>
                <div class="col-md-3">
                    <a href="viewTransaction.jsp"><div class="card text-center">
                        <div class="card-body" style="background-color:white; color: black;border-radius: 10px ">
                            <h5 class="card-title">Total Transaction</h5><hr>
                            <p class="card-text fs-4"><%=tr.size() %></p>
                        </div>
                    </div></a>
                </div> 
            </div>
            </div>
            
            <div class="trans">
		<a href="viewTransaction.jsp"><h3>Transaction Details</h3></a>
		<table class="table table-bordered border-success">
			<thead>
				<th class="bg-info">#<%int count=1; %></th>
				<th class="bg-info">Transaction Id</th>
				<th class="bg-info">User Account Number</th>
				<th class="bg-info">Reciever Account Number</th>
				<th class="bg-info">Transaction Date</th>
				<th class="bg-info">Amount</th>
				<th class="bg-info">Balance</th>
				<th class="bg-info">Transaction Type</th>
				<th class="bg-info">Date</th>
			</thead>
			<tbody>
			<%
			ArrayList<Transaction> list=(ArrayList<Transaction>)tdao.getTransaction();
			Iterator<Transaction> it=list.iterator();
			int i=1;%>
			<%while(it.hasNext()&&i<=5){ 
			Transaction t=it.next();%>
				<tr class="table-active">
					<td><%=count++ %></td>
					<td><%=t.getTransactionId() %></td>
					<td><%=t.getUser() %></td>
					<td><%=t.getRec_acc() %></td>
					<td><%=t.getDate() %></td>
					<td>$. <%=t.getAmount() %></td>
					<td>$. <%=t.getBalance() %></td>
					<td><%=t.getTransaction() %></td>
					<td><%=t.getDate() %></td>
				</tr>
				<%i++; %>
				<%}%>

			</tbody>
		</table>
	</div>
	</div>
	
</body>
</html>