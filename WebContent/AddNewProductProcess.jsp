<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, java.util.*" %>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>

		<%! 
				String name;
				String price;
				String quantity;
				String description;
				Part img1, img2, img3, img4, img5;
				String fileName[] = new String[5];
		
		%>
			
		<%	
		
		
				name = request.getParameter("name");
				price = request.getParameter("price");
				quantity = request.getParameter("quantity");
				description = request.getParameter("description");
				img1 = request.getPart("image1");
				img2 = request.getPart("image2");
				img3 = request.getPart("image3");
				img4 = request.getPart("image4");
				img5 = request.getPart("image5");
				
				
				
				ArrayList<Part> images = new ArrayList<Part>();
					images.add(img1);
					images.add(img2);
					images.add(img3);
					images.add(img4);
					images.add(img5);
				
					
					int i=0;
					
					for(Part part :images){					
						if(part.getSize() != 0 ) {
							Random suffix = new Random();
							Integer num = suffix.nextInt(1000000000)+1;
							
							String partHeader = part.getHeader("content-disposition");
										
						    for (String content : part.getHeader("content-disposition").split(";")) {
						    	System.out.println(content.trim().startsWith("filename"));
						        if (content.trim().startsWith("filename")) {
						        	System.out.println(content);
						            fileName[i] = num+content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
						        }
						    }
						    
						    
						
						    
						    FileOutputStream fos = null;
						    InputStream is = null;
						   
						    try {
						    	File file = new File("D:\\Training\\workspace\\TrainingProject_abhishek\\WebContent\\images\\uploads\\vendor" + File.separator + fileName[i]);
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
						}
						i++;
					}
				
					int k;
					for(k=0; k<5; k++){
						if(fileName[k] == null){
							fileName[k] = "default.png";
						}
					}
					
					
					
				int ID = (int)session.getAttribute("ID");
				
				Connection con=null;
				Statement stmt=null;
				ResultSet rs=null;
				
				try{
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommercedb", "root", "");
					stmt = con.createStatement();
					
					String sql = "INSERT INTO product_information (pro_name, pro_price, pro_quantity, pro_description, ven_id, pro_image1, pro_image2, pro_image3, pro_image4, pro_image5) VALUES ('"+name+"', '"+price+"', '"+quantity+"', '"+description+"','"+ID+"', '"+fileName[0]+"', '"+fileName[1]+"', '"+fileName[2]+"', '"+fileName[3]+"', '"+fileName[4]+"')";
					
					int row = stmt.executeUpdate(sql);
					if(row != 0){
						
						response.sendRedirect("ProductList.jsp");
					}else{
						session.setAttribute("FAIL", "fail");
						response.sendRedirect("AddNewProductForm.jsp");
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