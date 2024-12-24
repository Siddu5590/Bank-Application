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

@WebServlet("/addAccount")
public class AddAccounts extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String phonenumber=req.getParameter("phone");
		String mail=req.getParameter("mail");
		String pinn=req.getParameter("pin");
		String confirmm=req.getParameter("confirm");
		
		long phone=Long.parseLong(phonenumber);
		int pin=Integer.parseInt(pinn);
		int confirm=Integer.parseInt(confirmm);
		
		HttpSession session=req.getSession();
		CustomerDAO cdao=new CustomerDAOImpl();
		Customer c=new Customer();
		if(pin==confirm)
		{
			c.setName(name);
			c.setPhone(phone);
			c.setMail(mail);
			c.setPin(pin);
			
			boolean res=cdao.insertCustomer(c);
			
			if(res==true)
			{
				
				req.setAttribute("success", "Account Created Successfully...");
				RequestDispatcher rd=req.getRequestDispatcher("addAccounts.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("fail", "Failed to create Account...");
				RequestDispatcher rd=req.getRequestDispatcher("addAccounts.jsp");
				rd.forward(req, resp);
			}
		}
		else {
			req.setAttribute("fail", "Failed to create Account...");
			RequestDispatcher rd=req.getRequestDispatcher("addAccounts.jsp");
			rd.forward(req, resp);
		}
	}
}
