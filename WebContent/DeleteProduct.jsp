<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*" %>

				
			<%
				String id = request.getParameter("id");
				
				Connection con=null;
				Statement stmt=null;
				ResultSet rs=null;
				
				try{
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
					stmt = con.createStatement();
				
					String sql = "DELETE FROM product_information WHERE pro_id='"+id+"'";
					
					int rows = stmt.executeUpdate(sql);
					if(rows != 0){	
						response.sendRedirect("ProductList.jsp");	
					}else{
						response.sendRedirect("ProductList.jsp");
						
					}
				}catch(ClassNotFoundException cnfe) {
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

