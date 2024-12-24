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
		margin:20px;
		margin-bottom:40px;
	}

	</style>
</head>
<body>
<%@include file="header.jsp" %>

    <div class="trans">
		<h3>Transaction Details</h3>
		<table class="table table-bordered border-dark">
			<thead >
				<th class="bg-info">#<%int count=1; %></th>
				<th class="bg-info">Transaction Id</th>
				<th class="bg-info">User Account Number</th>
				<th class="bg-info">Reciever Account Number</th>
				<th class="bg-info">Transaction Date</th>
				<th class="bg-info">Transaction Type</th>
				<th class="bg-info">Amount</th>
				<th class="bg-info">Balance</th>
				<th class="bg-info">Date</th>
			</thead>
			<tbody>
			<%
			TransactionDAO tdao=new TransactionDAOImpl();
			ArrayList<Transaction> list=(ArrayList<Transaction>)tdao.getTransaction(c.getAccno());
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
					<td><%=t.getDate()%></td>
					
				</tr>
				<%}%>

			</tbody>
		</table>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>