package com.techaspect.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.techaspect.dao.CustomerDao;
import com.techaspect.entity.Customer;
import com.techaspect.entity.CustomerAddress;
import com.techaspect.entity.Product;

public class CustomerLogInServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		
	
		Customer customer = new Customer();
		customer.setEmail(email);
		customer.setPassword(pwd);
		
		CustomerAddress customerAddress = new CustomerAddress();
		CustomerDao customerDao = CustomerDao.getInstance();

		boolean status = customerDao.customerLogin(customer, customerAddress);
		if(status) {
			HttpSession session = request.getSession();
					
			session.setAttribute("CUSTOMERDATA", customer);
			session.setAttribute("CID", customer.getId());
			session.setAttribute("ADDRESS", customerAddress);
						
			List<Product> cart = new ArrayList<>();
			session.setAttribute("CART", cart);	
	
		} else {
			request.setAttribute("status", true);
		}
		RequestDispatcher rd = request.getRequestDispatcher("productList");
		rd.forward(request, response);
	}
}
