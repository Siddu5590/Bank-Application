<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Bank.DAO.TransactionDAOImpl"%>
<%@page import="com.Bank.DAO.TransactionDAO"%>
<%@page import="com.Bank.DTO.Transaction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Indian Bank Pvt. Ltd.</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>	
<style>
body {
	background-color: silver;
	height:100vh;
}
.carousel-item img{
	margin:20px;
	height:500px;
	width:900px;
	opacity: 1;
}

.row{
	margin-left:230px;
	gap:30px;	
	
}
  .content a{
  	text-decoration:none;
  }
 .card {
     border: none;
     border-radius: 10px;
     box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  }
.card-body {
	height: auto;
	border-radius: 5px;
	box-shadow: 0 8px 12px 0 rgba(0, 0, 0, 0.2), 0 12px 30px 0 rgba(0, 0, 0, 0.19);
}

.card-body:hover {
	box-shadow: 0 -8px 4px 0 rgba(10, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 10, 0, 0.19);
}
.card-body button{
	margin-left:20px;
}

.btn {
	text-align: center;
	margin-left: 50px;
}

.btn:hover {
	background-color: plum;
}

.trans {
	margin: 60px 0px;
	
}

.trans h3 {
	margin: 10px;
}

.trans a {
	float: right;
	margin-right: 80px;
	margin-bottom: 10px;
	text-align: center;
	text-decoration: none;
	color: white;
	font-size: 20px;
	background-color: blue;
	width: auto;
	padding: 7px;
	border-radius: 5px;
}
.table td{
	text-align:center;
}
.table {
	width: 90%;
	margin: 10px 60px;
}


</style>
</head>
<body>
	<%@include file="header.jsp"%>
	
	<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image1.jpg" class="rounded mx-auto d-block" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images.jpg" class="rounded mx-auto d-block" alt="...">
    </div>
    <div class="carousel-item">
      <img src="image2.jpg" class="rounded mx-auto d-block" alt="...">
    </div>
    <div class="carousel-item">
      <img src="image3.jpg" class="rounded mx-auto d-block" alt="...">
    </div>
    
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="content flex-grow-1">
            <div class="row mb-4" >
               <a href="checkBalance.jsp" > <div class="col-md-3 big" >
                <div class="card text-center text-bg-primary" >
                    <div class="card-body" style="background-color:white; color: black;border-radius: 10px ">
                        <h5 class="card-title">Check Balance</h5>
                        <button class="card-text mt-2 btn btn-primary">Check Balance</button>
                    </div>
                </div></a>
            </div>
            
                <div class="col-md-3">
                    <a href="deposit.jsp">
                        <div class="card text-center text-bg-success big">
                            <div class="card-body" style="background-color:white; color: black; border-radius: 10px">
                                <h5 class="card-title">Deposit Amount</h5>
                                <button class="card-text mt-2 btn btn-primary">Deposit here</button>
                            </div>
                        </div></a>
                </div>
                
                <div class="col-md-3">
                    <a href="transfer.jsp"><div class="card text-center text-bg-warning big">
                        <div class="card-body" style="background-color:white; color: black;border-radius: 10px ">
                            <h5 class="card-title">Transfer Amount</h5>
                            <button class="card-text mt-2 btn btn-primary">Transfer here</button>
                        </div>
                    </div></a>
                </div>
                
            </div>

	<div class="trans">
		<h3>Transaction Details</h3>
		<a href="transaction.jsp" class="btn btn-primary">View Transaction</a>
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
			TransactionDAO tdao=new TransactionDAOImpl();
			ArrayList<Transaction> list=(ArrayList<Transaction>)tdao.getTransaction(c.getAccno());
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

	<%@include file="footer.jsp" %>
</body>
</html>