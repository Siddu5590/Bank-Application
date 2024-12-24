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

@WebServlet("/updateprofile")
public class UpdateProfile extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		long phone=Long.parseLong(req.getParameter("phone"));
		String mail=req.getParameter("mail");
		
		HttpSession session=req.getSession();
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=(Customer)session.getAttribute("customer");
		c.setName(name);
		c.setMail(mail);
		c.setPhone(phone);
		
		boolean res=cdao.updateCustomer(c);
		if(res==true)
		{
			req.setAttribute("success", "Your Profile Updated Successfully...");
			RequestDispatcher rd=req.getRequestDispatcher("updateProfile.jsp");
			rd.forward(req, resp);
		}
		else {
			req.setAttribute("fail", "Failed to Update your Profile...");
			RequestDispatcher rd=req.getRequestDispatcher("updateProfile.jsp");
			rd.forward(req, resp);
		}
	}
}
