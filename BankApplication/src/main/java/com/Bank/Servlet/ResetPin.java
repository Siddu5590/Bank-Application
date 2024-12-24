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

@WebServlet("/resetPin")
public class ResetPin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mail=req.getParameter("mail");
		int pin=Integer.parseInt(req.getParameter("pin"));
		int confirm=Integer.parseInt(req.getParameter("confirm"));
		
		HttpSession session=req.getSession();
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=(Customer)session.getAttribute("customer");
		
		if(pin==confirm && mail.equals(c.getMail())) {
			c.setPin(pin);
			
			boolean res=cdao.updateCustomer(c);
			if(res==true)
			{
				req.setAttribute("success", "PIN updated Successfully...");
				RequestDispatcher rd=req.getRequestDispatcher("resetPin.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("fail", "Failed to Change PIN...");
				RequestDispatcher rd=req.getRequestDispatcher("resetPin.jsp");
				rd.forward(req, resp);
			}
			
		}
		else {
			req.setAttribute("fail", "Invalid Credentails...");
			RequestDispatcher rd=req.getRequestDispatcher("resetPin.jsp");
			rd.forward(req, resp);
		}
		
		
	}
}
