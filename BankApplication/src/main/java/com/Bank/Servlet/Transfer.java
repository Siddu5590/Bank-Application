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

@WebServlet("/transfer")
public class Transfer extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String receiver_accno = req.getParameter("receiver");
		String amt = req.getParameter("amount");
		String sender = req.getParameter("accno");
		String pinn = req.getParameter("pin");

		long rec_accno = Long.parseLong(receiver_accno);
		double amount = Double.parseDouble(amt);
		long accno = Long.parseLong(sender);
		int pin = Integer.parseInt(pinn);

		HttpSession session = req.getSession(false);
		Transaction t = new Transaction();
		Transaction t1 = new Transaction();
		TransactionDAO tdao = new TransactionDAOImpl();

		CustomerDAO cdao = new CustomerDAOImpl();
		Customer receiver = cdao.getCustomer(rec_accno);
		Customer c = (Customer) session.getAttribute("customer");

		if (c.getAccno() != receiver.getAccno() && c.getBal() > 0 && c.getBal() >= amount && amount > 0
				&& c.getBal() > 0) {
			if (c.getPin() == pin) {
				c.setBal(c.getBal() - amount);
				boolean c_res = cdao.updateCustomer(c);

				if (c_res == true) {

					t.setTransactionId(TransactionID.generateTransactionId());
					t.setUser(c.getAccno());
					t.setTransaction("DEBITED");
					t.setRec_acc(receiver.getAccno());
					t.setAmount(amount);
					t.setBalance(c.getBal());

					boolean result = tdao.insertTransaction(t);
				}
				receiver.setBal(receiver.getBal() + amount);
				boolean rec_result = cdao.updateCustomer(receiver);
				if (rec_result == true) {

					t1.setTransactionId(t.getTransactionId());
					t1.setUser(receiver.getAccno());
					t1.setTransaction("CREDITED");
					t1.setRec_acc(c.getAccno());
					t1.setAmount(amount);
					t1.setBalance(c.getBal());

					boolean result = tdao.insertTransaction(t1);
				}
				if (c_res && rec_result) {
					session.setAttribute("receiver", t1);
					req.setAttribute("success", "Transaction successfull");
					req.setAttribute("transfer", "Your Current Balance is: $. " + c.getBal());
					RequestDispatcher rd = req.getRequestDispatcher("transfer.jsp");
					rd.forward(req, resp);
				} else {
					req.setAttribute("fail", "Transaction failed");
					RequestDispatcher rd = req.getRequestDispatcher("transfer.jsp");
					rd.forward(req, resp);

				}
			}
			else {
				req.setAttribute("fail", "Invalid Pin");
				RequestDispatcher rd = req.getRequestDispatcher("transfer.jsp");
				rd.forward(req, resp);

			}

		}
		else {
			req.setAttribute("fail", "Invalid Credentials please try again...");
			RequestDispatcher rd = req.getRequestDispatcher("transfer.jsp");
			rd.forward(req, resp);

		}
	}
	
}