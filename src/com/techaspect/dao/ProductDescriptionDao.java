/*
 * Copyright (c) 2018, TechAspect Solutions Private Limited. All Rights Reserved.
 * TECHASPECT SOLUTIONS PRIVATE LIMITED PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 */

package com.techaspect.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;

import com.techaspect.entity.Product;

/**
 * The ProductDescriptionDao class contains the database operations
 * related code.
 * 
 * This class belongs to Vendor Module. 
 * 
 * @author Abhishek Dwivedi
 */
public class ProductDescriptionDao extends Dao {
	
	private static final Logger LOGGER = Logger.getLogger(ProductDescriptionDao.class);
	
	private static ProductDescriptionDao productDescriptionDao;
	
	public static ProductDescriptionDao getInstance() {
		if(productDescriptionDao == null) {
			productDescriptionDao = new ProductDescriptionDao();
		}
		return productDescriptionDao;
	}
	
	
	
	/**
     * Add Product Description Record in the Table.
     *
     * @param   productDescription
     *          A Product object containing data.
     *
     * @return  boolean
     * 			true if record successfully inserted otherwise else.
     */
	public boolean addProductDescription(Product product) {
		boolean status = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
			
			String sql = "INSERT INTO product_description (pro_id, descp_1_title, descp_1_content, descp_2_title, descp_2_content, descp_3_title,"
					+ " descp_3_content, descp_4_title, descp_4_content, descp_5_title, descp_5_content, descp_6_title, descp_6_content, descp_7_title, descp_7_content, "
					+ "descp_8_title, descp_8_content, descp_9_title, descp_9_content, descp_10_title, descp_10_content, vendor_id)"
					+ " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = openPreparedStatement(con, sql);
			
			pstmt.setInt(1, product.getId());
			pstmt.setString(2, product.getDESC1());
			pstmt.setString(3, product.getDContent1());
			pstmt.setString(4, product.getDESC2());
			pstmt.setString(5, product.getDContent2());
			pstmt.setString(6, product.getDESC3());
			pstmt.setString(7, product.getDContent3());
			pstmt.setString(8, product.getDESC4());
			pstmt.setString(9, product.getDContent4());
			pstmt.setString(10, product.getDESC5());
			pstmt.setString(11, product.getDContent5());
			pstmt.setString(12, product.getDESC6());
			pstmt.setString(13, product.getDContent6());
			pstmt.setString(14, product.getDESC7());
			pstmt.setString(15, product.getDContent7());
			pstmt.setString(16, product.getDESC8());
			pstmt.setString(17, product.getDContent8());
			pstmt.setString(18, product.getDESC9());
			pstmt.setString(19, product.getDContent9());
			pstmt.setString(20, product.getDESC10());
			pstmt.setString(21, product.getDContent10());
			pstmt.setInt(22, product.getVendorId());
			
			int rows = pstmt.executeUpdate();
			if(rows != 0) {
				status = true;
			}
		} catch(SQLException sqle) {
			LOGGER.error("SQL Exception occured", sqle);
		} finally {
			closeConnection(con);
			closePreparedStatement(pstmt);
		}	
		return status;
	}
	
	
	/**
     * Update Product Description Record in the Table.
     *
     * @param   productDescription
     *          A Product object containing data.
     *
     * @return  boolean
     * 			true if record successfully updated otherwise else.
     */
	public boolean editProductDescription(Product product) {
		boolean status = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
			
			String sql = "UPDATE product_description SET descp_1_title=?, descp_1_content=?, descp_2_title=?, descp_2_content=?, descp_3_title=?, descp_3_content=?, "
					+ "descp_4_title=?, descp_4_content=?, descp_5_title=?, descp_5_content=?, descp_6_title=?, descp_6_content=?, descp_7_title=?, descp_7_content=?, "
					+ "descp_8_title=?, descp_8_content=?, descp_9_title=?, descp_9_content=?, descp_10_title=?, descp_10_content=? WHERE pro_id=?";
			
			
			pstmt = openPreparedStatement(con, sql);
			
			pstmt.setString(1, product.getDESC1());
			pstmt.setString(2, product.getDContent1());
			pstmt.setString(3, product.getDESC2());
			pstmt.setString(4, product.getDContent2());
			pstmt.setString(5, product.getDESC3());
			pstmt.setString(6, product.getDContent3());
			pstmt.setString(7, product.getDESC4());
			pstmt.setString(8, product.getDContent4());
			pstmt.setString(9, product.getDESC5());
			pstmt.setString(10, product.getDContent5());
			pstmt.setString(11, product.getDESC6());
			pstmt.setString(12, product.getDContent6());
			pstmt.setString(13, product.getDESC7());
			pstmt.setString(14, product.getDContent7());
			pstmt.setString(15, product.getDESC8());
			pstmt.setString(16, product.getDContent8());
			pstmt.setString(17, product.getDESC9());
			pstmt.setString(18, product.getDContent9());
			pstmt.setString(19, product.getDESC10());
			pstmt.setString(20, product.getDContent10());
			pstmt.setInt(21, product.getId());
			
			int rows = pstmt.executeUpdate();
			if(rows != 0) {
				status = true;
			}
		} catch(SQLException sqle) {
			LOGGER.error("SQL Exception occured", sqle);
		} finally {
			closeConnection(con);
			closePreparedStatement(pstmt);
		}	
		return status;
	}

	
	
	/**
     * Fetch all Product Description Record in the Table.
     *
     * @param   productDescription
     *          A Product object containing data.
     *
     * @return  boolean
     * 			true if record successfully fetched otherwise else.
     */
	public List<Product> selectAllProductDescription(int vid) {
		
		ArrayList<Product> productList = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
					
			String sql = "SELECT * FROM product_description WHERE vendor_id=?";
			pstmt = openPreparedStatement(con, sql);
			pstmt.setInt(1, vid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Product product = new Product();
				
				product.setId(rs.getInt(2));
				
				product.setDESC1(rs.getString(3));
				product.setDContent1(rs.getString(4));
				
				product.setDESC2(rs.getString(5));
				product.setDContent2(rs.getString(6));
				
				product.setDESC3(rs.getString(7));
				product.setDContent3(rs.getString(8));
				
				product.setDESC4(rs.getString(9));
				product.setDContent4(rs.getString(10));
				
				product.setDESC5(rs.getString(11));
				product.setDContent5(rs.getString(12));
				
				product.setDESC6(rs.getString(13));
				product.setDContent6(rs.getString(14));
				
				product.setDESC7(rs.getString(15));
				product.setDContent7(rs.getString(16));
				
				product.setDESC8(rs.getString(17));
				product.setDContent8(rs.getString(18));
				
				product.setDESC9(rs.getString(19));
				product.setDContent9(rs.getString(20));
				
				product.setDESC10(rs.getString(21));
				product.setDContent10(rs.getString(22));
				
				
				productList.add(product);
			}
		} catch(SQLException sqle) {
			//sqle.printStackTrace();
			LOGGER.error("SQL Exception occured", sqle);
		} finally {
			closePreparedStatement(pstmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		return productList;
	}
	
	
public List<Product> selectAllProduct() {
		
		ArrayList<Product> productList = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
					
			String sql = "SELECT * FROM product_description";
			pstmt = openPreparedStatement(con, sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Product product = new Product();
				
				product.setId(rs.getInt(2));
				
				product.setDESC1(rs.getString(3));
				product.setDContent1(rs.getString(4));
				
				product.setDESC2(rs.getString(5));
				product.setDContent2(rs.getString(6));
				
				product.setDESC3(rs.getString(7));
				product.setDContent3(rs.getString(8));
				
				product.setDESC4(rs.getString(9));
				product.setDContent4(rs.getString(10));
				
				product.setDESC5(rs.getString(11));
				product.setDContent5(rs.getString(12));
				
				product.setDESC6(rs.getString(13));
				product.setDContent6(rs.getString(14));
				
				product.setDESC7(rs.getString(15));
				product.setDContent7(rs.getString(16));
				
				product.setDESC8(rs.getString(17));
				product.setDContent8(rs.getString(18));
				
				product.setDESC9(rs.getString(19));
				product.setDContent9(rs.getString(20));
				
				product.setDESC10(rs.getString(21));
				product.setDContent10(rs.getString(22));
				
				
				productList.add(product);
			}
		} catch(SQLException sqle) {
			//sqle.printStackTrace();
			LOGGER.error("SQL Exception occured", sqle);
		} finally {
			closePreparedStatement(pstmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		return productList;
	}
	
}
