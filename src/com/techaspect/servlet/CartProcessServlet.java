package com.techaspect.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.techaspect.entity.Product;

public class CartProcessServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		String PageName = request.getParameter("jsp");
		//int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<Product> cart = (List<Product>)session.getAttribute("CART");
		
		ServletContext sctx = getServletContext();
		@SuppressWarnings("unchecked")
		List<Product> productList = (List<Product>)sctx.getAttribute("PRODUCTINFO");
		
		for(Product product : productList) {
			if(product.getId() == id) {
				cart.add(product);
			}
		}
		
		response.sendRedirect(PageName+".jsp?id="+id);
	}
}
