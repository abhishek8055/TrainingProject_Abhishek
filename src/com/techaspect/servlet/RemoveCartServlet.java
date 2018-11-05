package com.techaspect.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techaspect.entity.Product;

public class RemoveCartServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		//int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<Product> cart = (List<Product>)session.getAttribute("CART");
		
		cart.remove(id);
		
		response.sendRedirect("ShoppingCart.jsp");
	}

}
