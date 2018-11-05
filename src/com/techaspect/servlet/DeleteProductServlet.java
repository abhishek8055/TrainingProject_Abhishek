package com.techaspect.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.techaspect.dao.ProductInformationDao;
import com.techaspect.entity.Product;

public class DeleteProductServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int proId = Integer.parseInt(request.getParameter("id"));
		int proIndex = Integer.parseInt(request.getParameter("index"));
		
		ProductInformationDao productInformationDao = ProductInformationDao.getInstance();
		boolean status = productInformationDao.deleteProduct(proId);
		if(status) {
			
			ServletContext sctx = getServletContext();
			@SuppressWarnings("unchecked")
			List<Product> productInfo = (List<Product>)sctx.getAttribute("PRODUCTINFO");
			productInfo.remove(proIndex);
			
			@SuppressWarnings("unchecked")
			List<Product> productDesc = (List<Product>)sctx.getAttribute("PRODUCTDESC");
			productDesc.remove(proIndex);
			
			@SuppressWarnings("unchecked")
			List<Product> productSpec = (List<Product>)sctx.getAttribute("PRODUCTSPEC");
			productSpec.remove(proIndex);
			
	
		}
		RequestDispatcher rd = request.getRequestDispatcher("ProductList.jsp");
		rd.forward(request, response);
	}
}
