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
import javax.sql.DataSource;
import org.apache.log4j.Logger;
import com.techaspect.entity.Vendor;

/**
 * The VendorDao class contains the database operations
 * related code.
 * 
 * This class belongs to Vendor Module. 
 * 
 * @author Abhishek Dwivedi
 */
public class VendorDao extends Dao{
	
	private static final Logger LOGGER = Logger.getLogger(VendorDao.class);
	
	private static VendorDao vendorDao;
	
	public static VendorDao getInstance() {
		if(vendorDao == null) {
			vendorDao = new VendorDao();
		}
		return vendorDao;
	}
	
	
	/**
     * Validate an existing Vendor Record in the Table.
     *
     * @param   Vendor
     *          A Vendor object containing data.
     *
     * @return  boolean
     * 			true if record successfully found otherwise else.
     */
	public boolean logIn(Vendor vendor) {
		boolean status = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
			
			String sql= "SELECT * FROM vendor_information WHERE ven_email=? AND ven_password=?";
			pstmt = openPreparedStatement(con, sql);
			pstmt.setString(1, vendor.getEmail());
			pstmt.setString(2, vendor.getPassword());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				status = true;
				vendor.setId(rs.getInt(1));
				vendor.setFirstName(rs.getString(2));
				vendor.setLastName(rs.getString(3));
				vendor.setEmail(rs.getString(4));
				vendor.setPassword(rs.getString(5));
			}
		} catch(SQLException sqle) {
			LOGGER.error("SQL Exception occured", sqle);
		} finally {
			closeResultSet(rs);
			closePreparedStatement(pstmt);
			closeConnection(con);
		}
		return status;
	}
}
