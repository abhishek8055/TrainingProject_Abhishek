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
import java.sql.Statement;

import javax.sql.DataSource;

import org.apache.log4j.Logger;

import com.techaspect.entity.Customer;
import com.techaspect.entity.CustomerAddress;

/**
 * The CustomerDao class contains the database operations
 * related code.
 * 
 * This class belongs to Customer Module. 
 * 
 * @author Abhishek Dwivedi
 */
public class CustomerDao extends Dao {
	
	private static final Logger LOGGER = Logger.getLogger(CustomerDao.class);
	
	private static CustomerDao customerDao;
	
	public static CustomerDao getInstance() {
		if(customerDao == null) {
			customerDao = new CustomerDao();
		}
		return customerDao;
	}
	
	
	/**
     * Inserts a new Customer Record in the Table.
     *
     * @param   customer
     *          A Customer object containing data.
     *
     * @return  boolean
     * 			true if record successfully inserted otherwise else.
     */
	public boolean insertCustomer(Customer customer) {
		boolean status = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
			
			String sql = "INSERT INTO customer_information(cust_fname, cust_lname, cust_email, cust_password, cust_image) VALUES(?,?,?,?,?)";
			pstmt = openPreparedStatement(con, sql);
			pstmt.setString(1, customer.getFirstName());
			pstmt.setString(2, customer.getLastName());
			pstmt.setString(3, customer.getEmail());
			pstmt.setString(4, customer.getPassword());
			pstmt.setString(5, customer.getProfilePicture());
			int rows = pstmt.executeUpdate();
			if(rows != 0) {
				status = true;
			}
		} catch(SQLException sqle) {
			LOGGER.error("SQL Exception occured", sqle);
		} finally {
			closePreparedStatement(pstmt);
			closeConnection(con);
		}
		
		return status;
	}
	
	
	/**
     * Validate an existing Customer Record in the Table.
     *
     * @param   customer
     *          A Customer object containing data.
     *
     * @return  boolean
     * 			true if record successfully found otherwise else.
     */
	public boolean customerLogin(Customer customer, CustomerAddress customerAddress) {
		boolean status = false;
		
		Connection con = null;
		PreparedStatement pstmt1 = null;
		ResultSet rs = null;
		ResultSet rs1 = null;
		PreparedStatement pstmt2 = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
			
			String sql = "SELECT * FROM customer_information WHERE cust_email=? AND cust_password=?";
			pstmt1 = openPreparedStatement(con, sql);
			pstmt1.setString(1, customer.getEmail());
			pstmt1.setString(2, customer.getPassword());
			rs = pstmt1.executeQuery();
			if(rs.next()) {
				status = true;
				
				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				customer.setDateOfBirth(rs.getString(4));
				customer.setEmail(rs.getString(6));
				customer.setContact(rs.getString(7));
				customer.setPassword(rs.getString(8));
				customer.setProfilePicture(rs.getString(9));
				
				
				String sql1 = "SELECT * FROM address_information WHERE cust_id=?";
				pstmt2 = openPreparedStatement(con, sql1);
				pstmt2.setInt(1, customer.getId());
				rs1 = pstmt2.executeQuery();
				if(rs1.next()){
					customerAddress.setId(rs1.getInt(1));
					customerAddress.setCustomerId(customer.getId());
					customerAddress.setAddress(rs1.getString(3));
					customerAddress.setCity(rs1.getString(4));
					customerAddress.setZip(rs1.getString(5));
					customerAddress.setState(rs1.getString(6));
					customerAddress.setCountry(rs1.getString(7));								
				}
			}
		} catch(SQLException sqle) {
			LOGGER.error("Exception occured", sqle);
		} finally {
			closeResultSet(rs1);
			closeResultSet(rs);
			closePreparedStatement(pstmt1);
			closePreparedStatement(pstmt2);
			closeConnection(con);
		}
		
		return status;
	}
	
	
	
	/**
     * Update existing Customer password in the Table.
     *
     * @param   customer
     *          A Customer object containing data.
     *
     * @return  boolean
     * 			true if record successfully updated otherwise else.
     */
	public boolean updatePassword(Customer customer, String newp) {
		boolean status = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
						
			 String sql= "UPDATE customer_information SET cust_password=? WHERE cust_id=?";
			 pstmt = openPreparedStatement(con, sql);
			 pstmt.setString(1, newp);
			 pstmt.setInt(2, customer.getId());
			 int row = pstmt.executeUpdate();
			 if(row != 0) {
					status = true;
					customer.setPassword("newp");
			 }
		} catch(SQLException sqle) {
			LOGGER.error("Exception occured", sqle);
		} finally {
			closeResultSet(rs);
			closePreparedStatement(pstmt);
			closeConnection(con);
		}
		
		return status;
	}
	
	
	/**
     * Update existing Customer details in the Table.
     *
     * @param   customer
     *          A Customer object containing data.
     *
     * @return  boolean
     * 			true if record successfully updated otherwise else.
     */
	public boolean updateDetails(Customer customer, CustomerAddress cAddress, CustomerAddress currentAddress) {
		boolean status = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
			stmt = con.createStatement();
			String sql1;
			String sql2;
			
			
			
			if(currentAddress.getAddress() != null) {
				
				sql1 = "UPDATE address_information SET add_address='"+cAddress.getAddress()+"', add_city='"+cAddress.getCity()+"', add_zip='"+cAddress.getZip()+"', add_state='"+cAddress.getState()+"', add_country='"+cAddress.getCountry()+"' WHERE cust_id="+customer.getId();
				
			}else{
				
				sql1 = "INSERT INTO address_information (add_address, add_city, add_zip, add_state, add_country, cust_id) VALUES ('"+cAddress.getAddress()+"', '"+cAddress.getCity()+"', '"+cAddress.getZip()+"', '"+cAddress.getState()+"', '"+cAddress.getCountry()+"', "+customer.getId()+")";
				
			}
			
			sql2 = "UPDATE customer_information SET cust_fname=?, cust_lname=?, cust_gender=?, cust_email=?, cust_contact=?, cust_image=? WHERE cust_id=?";
			pstmt = openPreparedStatement(con, sql2);
			pstmt.setString(1, customer.getFirstName());
			pstmt.setString(2, customer.getLastName());
			pstmt.setString(3, customer.getGender());
			pstmt.setString(4, customer.getEmail());
			pstmt.setString(5, customer.getContact());
			pstmt.setString(6, customer.getProfilePicture());
			pstmt.setInt(7, customer.getId());
			
			int row1 = stmt.executeUpdate(sql1);
			int row2 = pstmt.executeUpdate();
			
				if( row1 != 0 && row2 != 0 ) {
					status = true;
				}
			
		} catch(SQLException sqle) {
			LOGGER.error("Exception occured", sqle);
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closePreparedStatement(pstmt);
			closeConnection(con);
		}
		
		return status;
	}
	
}