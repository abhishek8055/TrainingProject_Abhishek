package com.techaspect.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techaspect.dao.ProductDescriptionDao;
import com.techaspect.dao.ProductInformationDao;
import com.techaspect.dao.ProductSpecificationDao;
import com.techaspect.dao.VendorDao;
import com.techaspect.entity.Product;
import com.techaspect.entity.Vendor;

public class VendorLoginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		Vendor vendor = new Vendor();
		vendor.setEmail(email);
		vendor.setPassword(pwd);
			
		VendorDao vendorDao = VendorDao.getInstance();
		boolean status = vendorDao.logIn(vendor);
		
		if(status) {
			
			/*
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
			*/
			
			session.setAttribute("VENDOR", vendor);
			session.setAttribute("VENDORID", vendor.getId());
			
			session.setAttribute("status", false);
			response.sendRedirect("productList?page=vendor");
			
		}else {
			session.setAttribute("status", true);
			RequestDispatcher rd = request.getRequestDispatcher("VendorLoginForm.jsp");
			rd.forward(request, response);
			}
	}
}
