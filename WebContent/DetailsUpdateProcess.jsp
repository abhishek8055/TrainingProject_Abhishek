<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, java.util.*" %>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>

<%

	int id = (int)session.getAttribute("ID");
%>


<%
  
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String contact = request.getParameter("contact");
	String pwd = request.getParameter("password");
	
	String address= request.getParameter("address");
	String city = request.getParameter("city");
	String zip = request.getParameter("zip");
	String state = request.getParameter("state");
	String country = request.getParameter("country");
	
	
					Part part = request.getPart("profilePic");
					String fileName = null;
					
					String partHeader = part.getHeader("content-disposition");
				    for (String content : part.getHeader("content-disposition").split(";")) {
				        if (content.trim().startsWith("filenaame")) {
				            fileName = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
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
				    
				    if(fileName == null){
				    	fileName  = "default.png";
				    }
		
		
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
		
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
		stmt = con.createStatement();
		
		String sql;
		String sql1;
		String sql2;
		
		
		sql = "SELECT * FROM address_information WHERE cust_id="+id;
		rs = stmt.executeQuery(sql);
		if(rs.next()){
			
			sql1 = "UPDATE address_information SET add_address='"+address+"', add_city='"+city+"', add_zip='"+zip+"', add_state='"+state+"', add_country='"+country+"' WHERE cust_id="+id;
			
		}else{
			
			sql1 = "INSERT INTO address_information (add_address, add_city, add_zip, add_state, add_country, cust_id) VALUES ('"+address+"', '"+city+"', '"+zip+"', '"+state+"', '"+country+"', "+id+")";
		}
		
		sql2 = "UPDATE customer_information SET cust_fname='"+fname+"', cust_lname='"+lname+"', cust_gender='"+gender+"', cust_email='"+email+"',cust_contact='"+contact+"' WHERE cust_id='"+id+"' AND cust_password='"+pwd+"'";
		
		
		int row1 = stmt.executeUpdate(sql1);
		int row2 = stmt.executeUpdate(sql2);
		
		if( row1 != 0 && row2 != 0 ) {
			session.setAttribute("status1", "SUCCESS");
			response.sendRedirect("CustomerAccount.jsp");
		}
		else{
			session.setAttribute("status2", "FAIL");
			response.sendRedirect("CustomerAccount.jsp");
		}
	} catch(ClassNotFoundException cnfe) {
		cnfe.printStackTrace();
	} catch(SQLException sqle) {
		sqle.printStackTrace();
	} finally {
		try {
			if(rs != null) {
				rs.close();
			}
			if(stmt != null) {
				stmt.close();
			}
			if(con != null) {
				con.close();
			}
		} catch(SQLException sqle) {
			sqle.printStackTrace();
		}
	}
%>

	
	
	
	
	
	
	
