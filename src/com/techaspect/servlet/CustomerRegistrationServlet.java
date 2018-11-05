package com.techaspect.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techaspect.dao.CustomerDao;
import com.techaspect.entity.Customer;
import com.techaspect.service.EmailService;

public class CustomerRegistrationServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		Customer customer = new Customer();
		customer.setFirstName(fname);
		customer.setLastName(lname);
		customer.setEmail(email);
		customer.setPassword(pwd);
		customer.setProfilePicture("default.png");
				
		CustomerDao customerDao = CustomerDao.getInstance();
		HttpSession session = request.getSession();
		boolean status = customerDao.insertCustomer(customer);
		if(status) {
			EmailService emailService = new EmailService();
			boolean emailStatus = emailService.sendWelcomeMailToCustomer(customer);
			response.sendRedirect("Register.jsp");
			session.setAttribute("EMAILSTATUS", emailStatus);
		} else {
			request.setAttribute("flag", "FAIL");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}
}