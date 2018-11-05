<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*" %>

	<%!
		String oldp;
		String newp;
		String rnewp;
	%>
	
	<% 
		
		oldp = request.getParameter("oldp");
		newp = request.getParameter("newp");
		rnewp = request.getParameter("rnewp");
		
		int ID = (int)session.getAttribute("ID");
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		

		try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
				stmt = con.createStatement();	
					
				if(!(newp.equals(rnewp))) {
				
					session.setAttribute("NEWFAIL", "NEW_NOT_MATCH");
					response.sendRedirect("CustomerAccount.jsp");
				
				}else {
				
				 	String sql= "UPDATE customer_information SET cust_password='"+ newp +"' WHERE cust_id="+ID+" AND cust_password='"+ oldp +"'";

			     	int rows = stmt.executeUpdate(sql);
			     	if(rows !=0) {
			    	 	session.setAttribute("SUCCESS", "PASSWORD_UPDATED");
			    	 	response.sendRedirect("CustomerAccount.jsp");
					} else{
						session.setAttribute("OLDFAIL", "OLD_NOT_MATCH");
					 	response.sendRedirect("CustomerAccount.jsp");
					}
				}
					
		 } catch(ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		 } catch(SQLException sqle) {
			 out.println(sqle);
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