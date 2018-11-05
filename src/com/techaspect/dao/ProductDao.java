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

import java.io.Serializable;
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
 * The ProductDao class contains the database operations
 * related code.
 * 
 * This class belongs to Customer/Vendor Module. 
 * 
 * @author Abhishek Dwivedi
 */
public class ProductDao extends Dao implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private static final Logger LOGGER = Logger.getLogger(ProductDao.class);
	
	
	
	/**
     * Add a new Product Record in the Table.
     *
     * @param   product
     *          A Product object containing data.
     *
     * @return  boolean
     * 			true if record successfully inserted otherwise else.
     */
	public boolean addProduct(Product product) {
		boolean status = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
			
			String sql = "INSERT INTO product_information (pro_name, pro_price, pro_quantity, pro_short_description, ven_id, pro_image1, pro_image2, pro_image3, pro_image4, pro_image5) VALUES (?,?,?,?,?,?,?,?,?,?)";
			pstmt = openPreparedStatement(con, sql);
			pstmt.setString(1, product.getName());
			pstmt.setString(2, product.getPrice());
			pstmt.setString(3, product.getQuantity());
			pstmt.setString(4, product.getSDesc());
			pstmt.setInt(5, product.getVendorId());
			pstmt.setString(6, product.getImage1());
			pstmt.setString(7, product.getImage2());
			pstmt.setString(8, product.getImage3());
			pstmt.setString(9, product.getImage4());
			pstmt.setString(10, product.getImage5());
			
			int rows = pstmt.executeUpdate();
			if(rows != 0) {
				status = true;
			}
		} catch(SQLException sqle) {
			LOGGER.error("Exception occured", sqle);
		} finally {
			closeConnection(con);
			closePreparedStatement(pstmt);
		}	
		return status;
	}
	
	
	/**
     * Edit an existing Product Record in the Table.
     *
     * @param   product
     *          A Product object containing data.
     *
     * @return  boolean
     * 			true if record successfully updated otherwise else.
     */
	public boolean editProduct(Product product) {
		boolean status = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
			
			String sql = "UPDATE product_information SET pro_name=?, pro_price=?, pro_quantity=?, pro_short_description=?, pro_image1=?, pro_image2=?, pro_image3=?, pro_image4=?, pro_image5=? WHERE pro_id=?";
			pstmt = openPreparedStatement(con, sql);
			
			pstmt.setString(1, product.getName());
			pstmt.setString(2, product.getPrice());
			pstmt.setString(3, product.getQuantity());
			pstmt.setString(4, product.getSDesc());
			pstmt.setString(5, product.getImage1());
			pstmt.setString(6, product.getImage2());
			pstmt.setString(7, product.getImage3());
			pstmt.setString(8, product.getImage4());
			pstmt.setString(9, product.getImage5());
			pstmt.setInt(10, product.getId());
			
			int rows = pstmt.executeUpdate();
			if(rows != 0) {
				status = true;
			}
		} catch(SQLException sqle) {
			LOGGER.error("Exception occured", sqle);
		} finally {
			closeConnection(con);
			closePreparedStatement(pstmt);
		}	
		return status;
	}

	
	/**
     * Fetch all Product Records from the Table.
     *
     * @param   product
     *          A Product object containing data.
     *
     * @return  boolean
     * 			true if record successfully fetched otherwise else.
     */
	public List<Product> selectAllProducts() {
		
		ArrayList<Product> productList = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
					
			String sql = "SELECT * FROM product_information";
			pstmt = openPreparedStatement(con, sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Product product = new Product();
				
				product.setId(rs.getInt(1));
				product.setName(rs.getString(2));
				product.setPrice(rs.getString(3));
				product.setQuantity(rs.getString(4));
				product.setSDesc(rs.getString(5));
				product.setImage1(rs.getString(6));
				product.setImage2(rs.getString(7));
				product.setImage3(rs.getString(8));
				product.setImage4(rs.getString(9));
				product.setImage5(rs.getString(10));
				product.setVendorId(rs.getInt(11));
				
				productList.add(product);
			}
		} catch(SQLException sqle) {
			//sqle.printStackTrace();
			LOGGER.error("Exception occured", sqle);
		} finally {
			closePreparedStatement(pstmt);
			closeResultSet(rs);
			closeConnection(con);
		}
		return productList;
	}
	
	public boolean deleteProduct(int id) {
		boolean status = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
			
			String sql = "DELETE FROM product_information WHERE pro_id=?";
			pstmt = openPreparedStatement(con, sql);
			
			pstmt.setInt(1, id);
			
			int rows = pstmt.executeUpdate();
			if(rows != 0) {
				status = true;
			}
		} catch(SQLException sqle) {
			LOGGER.error("Exception occured", sqle);
		} finally {
			closeConnection(con);
			closePreparedStatement(pstmt);
		}		
		return status;
	}

}
