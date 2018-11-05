package com.techaspect.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techaspect.dao.ProductDescriptionDao;
import com.techaspect.dao.ProductInformationDao;
import com.techaspect.dao.ProductSpecificationDao;
import com.techaspect.entity.Product;

public class GuestLogInServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		
		/*
		ProductInformationDao productInformationDao = ProductInformationDao.getInstance();
		List<Product> productInformationList = productInformationDao.selectAllProduct();
		session.setAttribute("PRODUCTINFO", productInformationList);
		
		ProductDescriptionDao productDescriptionDao = ProductDescriptionDao.getInstance();
		List<Product> productDescriptionList = productDescriptionDao.selectAllProduct();
		session.setAttribute("PRODUCTDESC", productDescriptionList);
		
		
		ProductSpecificationDao productSpecificationDao = ProductSpecificationDao.getInstance();
		List<Product> productSpecificationList = productSpecificationDao.selectAllProduct();
		session.setAttribute("PRODUCTSPEC", productSpecificationList);
		*/
		List<Product> cart = new ArrayList<>();
		session.setAttribute("CART", cart);	
		
		response.sendRedirect("productList");
	}

}
