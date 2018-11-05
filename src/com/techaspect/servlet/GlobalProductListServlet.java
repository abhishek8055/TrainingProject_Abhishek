package com.techaspect.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.techaspect.dao.ProductDescriptionDao;
import com.techaspect.dao.ProductInformationDao;
import com.techaspect.dao.ProductSpecificationDao;
import com.techaspect.entity.Product;

public class GlobalProductListServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext sctx = getServletContext();
		
		ProductInformationDao productInformationDao = ProductInformationDao.getInstance();
		List<Product> productInformationList = productInformationDao.selectAllProduct();
		sctx.setAttribute("PRODUCTINFO", productInformationList);
		
		ProductDescriptionDao productDescriptionDao = ProductDescriptionDao.getInstance();
		List<Product> productDescriptionList = productDescriptionDao.selectAllProduct();
		sctx.setAttribute("PRODUCTDESC", productDescriptionList);
		
		
		ProductSpecificationDao productSpecificationDao = ProductSpecificationDao.getInstance();
		List<Product> productSpecificationList = productSpecificationDao.selectAllProduct();
		sctx.setAttribute("PRODUCTSPEC", productSpecificationList);
		
		if(request.getParameter("page") != null) {
			String pageName = request.getParameter("page");
			if(pageName.equals("vendor")) {
				response.sendRedirect("VendorHomePage.jsp");
			}
		}else {
			response.sendRedirect("Home.jsp");
		}		
	}

}
