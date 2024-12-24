<%@page import="com.Bank.DAO.TransactionDAOImpl"%>
<%@page import="com.Bank.DAO.TransactionDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.Bank.DTO.Transaction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction History</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<style>
	body{
		background-color:silver;
	}
	.trans{
		margin-right:20px;
		margin-left:260px;
		margin-top:30px;
		
	}
	.table{
		margin-right:20px;
		margin-top:60px;
		position:relative;
		bottom:40px;
		
	}

	</style>
</head>
<body>
<%@include file="admin.jsp" %>

    <div class="trans">
		<h3>Transaction Details</h3>
		<table class="table table-bordered border-primary">
			<thead>
				<th>#<%int count=1; %></th>
				<th>Transaction Id</th>
				<th>User Account Number</th>
				<th>Reciever Account Number</th>
				<th>Transaction Date</th>
				<th>Transaction Type</th>
				<th>Amount</th>
				<th>Balance</th>
				<th>Date</th>
			</thead>
			<tbody>
			<%
			TransactionDAO tdao=new TransactionDAOImpl();
			ArrayList<Transaction> list=(ArrayList<Transaction>)tdao.getTransaction();
			Iterator<Transaction> it=list.iterator();%>
			<%while(it.hasNext()){ 
			Transaction t=it.next();%>
				<tr class="table-active">
					<td><%=count++ %></td>
					<td><%=t.getTransactionId() %></td>
					<td><%=t.getUser() %></td>
					<td><%=t.getRec_acc() %></td>
					<td><%=t.getDate() %></td>
					<td><%=t.getTransaction() %></td>
					<td>$. <%=t.getAmount() %></td>
					<td>$. <%=t.getBalance() %></td>
					<td><%=t.getDate() %></td>
				</tr>
				<%}%>

			</tbody>
		</table>
	</div>
</body>
</html>