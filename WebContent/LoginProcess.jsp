<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*" %>

	<%!
		String email;
		String pwd;
	%>
				
			<%
				email = request.getParameter("email");
				pwd = request.getParameter("pwd");
				
				Connection con=null;
				Statement stmt=null;
				ResultSet rs=null;
				
				try{
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
					stmt = con.createStatement();
					
					String sql = "SELECT * FROM customer_information WHERE cust_email='"+email+"' AND cust_password='"+pwd+"'";
					
					rs = stmt.executeQuery(sql);
					if(rs.next()){
						int id = rs.getInt("cust_id");
						String fname = rs.getString("cust_fname");
						String lname = rs.getString("cust_lname");
						String gender = rs.getString("cust_gender");
						String email = rs.getString("cust_email");
						String contact = rs.getString("cust_contact");
										
						session.setAttribute("ID",id);
						session.setAttribute("NAME", fname);
						session.setAttribute("LNAME", lname);
						
						session.setAttribute("EMAIL", email);
						session.setAttribute("CONTACT", contact);
						
						
						session.setAttribute("status", false);
						response.sendRedirect("index.jsp");
					}else{
						session.setAttribute("status", true);
						response.sendRedirect("index.jsp");
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

<!-- CONTENT ENDS -->