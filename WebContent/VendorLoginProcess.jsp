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
					
					String sql = "SELECT * FROM vendor_information WHERE ven_email='"+email+"' AND ven_password='"+pwd+"'";
					
					rs = stmt.executeQuery(sql);
					if(rs.next()){
						String fname = rs.getString("ven_fname");
						String lname = rs.getString("ven_lname");
						int id = rs.getInt("ven_id");
						
		
				
						session.setAttribute("VNAME", fname);
						session.setAttribute("ID",id);
						request.setAttribute("status", false);
						RequestDispatcher rd = request.getRequestDispatcher("VendorHomePage.jsp");
						rd.forward(request, response);
					}else{
						request.setAttribute("status", true);
						RequestDispatcher rd = request.getRequestDispatcher("VendorLoginForm.jsp");
						rd.forward(request, response);
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