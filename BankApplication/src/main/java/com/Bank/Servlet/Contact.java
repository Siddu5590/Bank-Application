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
@WebServlet("/contact")
public class Contact extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mail=req.getParameter("mail");
		String message=req.getParameter("message");
		
		HttpSession session=req.getSession();
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=(Customer)session.getAttribute("customer");
		c.setMessage(message);
		if(c!=null&&c.getMail().equals(mail))
		{
			req.setAttribute("message", "message send successfully");
			RequestDispatcher rd=req.getRequestDispatcher("contactUs.jsp");
			rd.forward(req, resp);
		}
		else {
		req.setAttribute("fail", "failed to send message");
		RequestDispatcher rd=req.getRequestDispatcher("contactUs.jsp");
		rd.forward(req, resp);
		}
	}
}
