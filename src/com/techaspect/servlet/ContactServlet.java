package com.techaspect.servlet;

import com.techaspect.dao.ContactDao;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class ContactServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String subject = request.getParameter("sub");
		String message = request.getParameter("message");
		
		ContactDao contactDao = new ContactDao();
		
		boolean status = contactDao.insertQuery(fname, lname, email, subject, message);
		if(status) {
			request.setAttribute("flag1", "pass");
		} else {
			request.setAttribute("flag2", "fail");
		}
		RequestDispatcher rd = request.getRequestDispatcher("Contact.jsp");
		rd.forward(request, response);
	}
}