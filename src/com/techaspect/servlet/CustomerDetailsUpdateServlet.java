package com.techaspect.servlet;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.techaspect.dao.CustomerDao;
import com.techaspect.entity.Customer;
import com.techaspect.entity.CustomerAddress;

public class CustomerDetailsUpdateServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
		HttpSession session = request.getSession();
		
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String pwd = request.getParameter("password");
		String currentPic = request.getParameter("currPic");
		
		Part part = request.getPart("newPic");
		
		String address= request.getParameter("address");
		String city = request.getParameter("city");
		String zip = request.getParameter("zip");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		
		Random suffix = new Random();
		Integer num = suffix.nextInt(1000000000)+1;
		
		String fileName = null;
		
	    for (String content : part.getHeader("content-disposition").split(";")) {
	        if (content.trim().startsWith("filename")) {
	            fileName = num.toString()+content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
	        }
	    }
	    
	    FileOutputStream fos = null;
	    InputStream is = null;
		   
		    try {
		    	File file = new File("D:\\Training\\workspace\\TrainingProject_abhishek\\WebContent\\images\\uploads\\customer" + File.separator + fileName);
		    	 fos = new FileOutputStream(file);
			        is = part.getInputStream();

			        int read = 0;
			        final byte[] bytes = new byte[1024];

			        while((read = is.read(bytes)) != -1) {
			            fos.write(bytes, 0, read);
			        }
			        
			    } catch (FileNotFoundException fnfe) {
			        fnfe.printStackTrace();
			    } finally {
			        if (fos != null) {
			            fos.close();
			        }
			        if (is != null) {
			        	is.close();
			        }
		    }
		    
		    if(part.getSize() == 0){
				fileName = currentPic;
			}
		    
		    
		    CustomerAddress currentAddress = (CustomerAddress)session.getAttribute("ADDRESS");
		    
		    Customer currentCustomer = (Customer)session.getAttribute("CUSTOMERDATA");
						 
		
		    String password = currentCustomer.getPassword();
		    int id = currentCustomer.getId();
		     
		    if(!(password.equals(pwd))) {    	
		    	request.setAttribute("flag2", "FAIL");
		    }else {
			    	 Customer tempCustomer = new Customer();
			    	 tempCustomer.setId(id);
			    	 tempCustomer.setFirstName(fname);
			    	 tempCustomer.setLastName(lname);
			    	 tempCustomer.setGender(gender);
			    	 tempCustomer.setEmail(email);
			    	 tempCustomer.setContact(contact);
			    	 tempCustomer.setProfilePicture(fileName);
					
				CustomerAddress tempAddress = new CustomerAddress();
					tempAddress.setId(currentAddress.getId());
					tempAddress.setCustomerId(id);
					tempAddress.setAddress(address);
					tempAddress.setCity(city);
					tempAddress.setZip(zip);
					tempAddress.setState(state);
					tempAddress.setCountry(country);
				
				CustomerDao  customerDao = CustomerDao.getInstance();
				boolean status = customerDao.updateDetails(tempCustomer, tempAddress, currentAddress);
				if(status) {
					request.setAttribute("flag1", "PASS");
					
					currentCustomer.setId(id);
					currentCustomer.setFirstName(fname);
					currentCustomer.setLastName(lname);
					currentCustomer.setGender(gender);
					currentCustomer.setEmail(email);
					currentCustomer.setContact(contact);
					currentCustomer.setProfilePicture(fileName);
					
					session.setAttribute("CUSTOMERDATA", currentCustomer);
					
					currentAddress.setAddress(address);
					currentAddress.setCity(city);
					currentAddress.setZip(zip);
					currentAddress.setState(state);
					currentAddress.setCountry(country);	
					session.setAttribute("ADDRESS", currentAddress);
					
				} else {
					request.setAttribute("flag2", "FAIL");
					
				}
				
		    }	
		    
		    RequestDispatcher rd = request.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(request, response);
			
	}
}