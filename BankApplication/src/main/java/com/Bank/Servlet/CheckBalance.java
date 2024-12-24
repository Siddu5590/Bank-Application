package com.Bank.Servlet;

import java.io.IOException;

import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;
import com.Bank.DTO.Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/checkBalance")
public class CheckBalance extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int pin=Integer.parseInt(req.getParameter("pin"));
		
		HttpSession session =req.getSession(false);
		Customer c=(Customer)session.getAttribute("customer");
		CustomerDAO cdao=new CustomerDAOImpl();
		if(c!=null && c.getPin()==pin)
		{
			req.setAttribute("success", "Your Balance is: $. "+c.getBal());
			RequestDispatcher rd=req.getRequestDispatcher("checkBalance.jsp");
			rd.forward(req, resp);
		}
		else
		{
			req.setAttribute("fail", "Invalid Credentials...");
			RequestDispatcher rd=req.getRequestDispatcher("checkBalance.jsp");
			rd.forward(req, resp);
		}
		
	}
}