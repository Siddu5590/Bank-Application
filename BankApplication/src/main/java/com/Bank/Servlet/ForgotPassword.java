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

@WebServlet("/forgotPassword")
public class ForgotPassword extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mail=req.getParameter("mail");
		long phone=Long.parseLong(req.getParameter("phone"));
		int pin=Integer.parseInt(req.getParameter("pin"));
		int confirm=Integer.parseInt(req.getParameter("confirm"));
		
		HttpSession session=req.getSession(false);
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=cdao.getCustomer(phone, mail);
		
		if(pin==confirm && mail.equals(c.getMail()) && phone==c.getPhone()) {
			c.setPin(pin);
			
			boolean res=cdao.updateCustomer(c);
			if(res==true)
			{
				req.setAttribute("success", "Your PIN changed Successfully Now Login here...");
				RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("fail", "Failed to Change PIN...");
				RequestDispatcher rd=req.getRequestDispatcher("forgotPassword.jsp");
				rd.forward(req, resp);
			}
			
		}
		else {
			req.setAttribute("fail", "Pin mismatch...");
			RequestDispatcher rd=req.getRequestDispatcher("forgotPassword.jsp");
			rd.forward(req, resp);
		}
		
		
	}
}
