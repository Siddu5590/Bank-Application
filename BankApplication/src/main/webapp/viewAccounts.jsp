<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Bank.DAO.CustomerDAOImpl"%>
<%@page import="com.Bank.DAO.CustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Account</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<style type="text/css">

.users{
	margin-left:270px;
	margin-right:20px;
	
}
.users a{
	font-size:16px;
}
.table thead th{
	text-align:center;
}
.table tbody td{
	background-color:snow;
}
        
        
</style>
</head>
<body>
<%@include file="admin.jsp" %>
<div class="users">

		<h3>Transaction Details</h3>
		<table class="table table-bordered table-primary">
			<thead>
				<th>#<%int count=1; %></th>
				<th>Account Number</th>
				<th>Account Holder Name</th>
				<th>Phone Number</th>
				<th>Mail Id</th>
				<th >Balance</th>
				<th colspan="2">Action</th>
				
			</thead>
			<tbody>
			<%CustomerDAO cdao=new CustomerDAOImpl();
			ArrayList<Customer> list=(ArrayList<Customer>)cdao.getCustomer();
			Iterator<Customer> it=list.iterator();%>
			<% while(it.hasNext()) {
			Customer c1=it.next();%>
				<tr>
					<td><%=count++ %></td>
					<td><%=c1.getAccno() %></td>
					<td><%=c1.getName() %></td>
					<td><%=c1.getPhone() %></td>
					<td><%=c1.getMail()%></td>
					<td>$. <%=c1.getBal()%></td>
					<td>
					
					<a href="viewUsers.jsp?accno=<%=c1.getAccno() %>" class="btnn btn btn-primary btn-sm"><i class="bi bi-eye"></i>View</a>
					<a href="deleteAccount.jsp?accno=<%=c1.getAccno() %>" class="btn btn-danger btn-sm ms-3"><i class="bi bi-trash"></i>Delete</a>
					</td>
					
				</tr>
				<% }%>
				
			</tbody>
		</table>
	</div>
</body>
</html>