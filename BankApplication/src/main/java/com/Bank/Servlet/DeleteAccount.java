package com.Bank.Servlet;

import java.io.IOException;

import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;
import com.Bank.DAO.TransactionDAO;
import com.Bank.DAO.TransactionDAOImpl;
import com.Bank.DTO.Customer;
import com.Bank.DTO.Transaction;
import com.Bank.DTO.TransactionID;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class DeleteAccount extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long accno=Long.parseLong(req.getParameter("accno"));
		
		HttpSession session=req.getSession(false);
		Customer admin=(Customer)session.getAttribute("customer");
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=cdao.getCustomer(accno);
		TransactionDAO tdao=new TransactionDAOImpl();
		
		if(admin.getAccno()!=accno) {
			boolean res2=cdao.deleteCustomer(c);
			c.setAccno(accno);
			double amount=c.getBal();
			admin.setBal(admin.getBal()+c.getBal());
			boolean res=cdao.updateCustomer(admin);
			
			if(res==true)
			{
				Transaction t = new Transaction();
				t.setTransactionId(TransactionID.generateTransactionId());
				t.setUser(c.getAccno());
				t.setRec_acc(admin.getAccno());
				t.setTransaction("CREDITED");
				t.setAmount(amount);
				t.setBalance(admin.getBal());
				
				boolean res1=tdao.insertTransaction(t);
				if(res&&res1)
				{
					req.setAttribute("delete", "Account Deleted Successfully..");
					RequestDispatcher rd=req.getRequestDispatcher("deleteAccount.jsp");
					rd.forward(req, resp);
				}
				else {
					req.setAttribute("fail", "Failed to  Deleted Account..");
					RequestDispatcher rd=req.getRequestDispatcher("deleteAccount.jsp");
					rd.forward(req, resp);
				}
			}
			else {
				req.setAttribute("fail", "Failed to  Deleted Account..");
				RequestDispatcher rd=req.getRequestDispatcher("deleteAccount.jsp");
				rd.forward(req, resp);
			}
			
		}
		else {
			req.setAttribute("fail", "Admin Account cannot be deleted..");
			RequestDispatcher rd=req.getRequestDispatcher("deleteAccount.jsp");
			rd.forward(req, resp);
		}
	}
}
