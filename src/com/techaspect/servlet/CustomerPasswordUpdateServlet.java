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

public class CustomerPasswordUpdateServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String oldp = request.getParameter("oldp");
		String newp = request.getParameter("newp");
		String rnewp = request.getParameter("rnewp");
		
		HttpSession session = request.getSession();
		Customer currentCustomer = (Customer)session.getAttribute("CUSTOMERDATA");
		String pwd = currentCustomer.getPassword();
		
		if(!(newp.equals(rnewp))) {
			
			request.setAttribute("NEWFAIL", "NEW_NOT_MATCH");
		
		}else if(!(oldp.equals(pwd))){
			request.setAttribute("OLDFAIL", "OLD_NOT MATCH");
		}else {	
			CustomerDao customerDao = CustomerDao.getInstance();
			boolean status = customerDao.updatePassword(currentCustomer, newp);
			if(status) {
				session.setAttribute("CUSTOMERDATA", currentCustomer);
				request.setAttribute("SUCCESS", "PASS");
			} 
		}
		RequestDispatcher rd = request.getRequestDispatcher("CustomerAccount.jsp");
		rd.forward(request, response);
	}
}