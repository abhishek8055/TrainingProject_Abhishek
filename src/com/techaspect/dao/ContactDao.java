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
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.apache.log4j.*;

/**
 * The ContactDao class contains the database operations
 * related code.
 * 
 * This class belongs to Customer Module. 
 * 
 * @author  Abhishek Dwivedi
 */

public class ContactDao extends Dao {
	private static final Logger LOGGER = Logger.getLogger(ContactDao.class);
	

	/**
     * Inserts a new Record in the Table.
     *
     * @param   contact
     *          A Contact object containing data.
     *
     * @return  boolean
     * 			true if record successfully inserted otherwise else.
     */
	public boolean insertQuery(String fname, String lname, String email, String subject, String message) {
		boolean status = false;
		
		Connection con = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		
		try {
			DataSource dataSource = getDataSource();
			con = dataSource.getConnection();
			stmt = con.createStatement();
			
			
			String sql = "INSERT INTO contact_information (cont_fname, cont_lname, cont_email, cont_subject, cont_message) VALUES(?,?,?,?,?)";
			pstmt = openPreparedStatement(con, sql);
			pstmt.setString(1, fname);
			pstmt.setString(2, lname);
			pstmt.setString(3, email);
			pstmt.setString(4, subject);
			pstmt.setString(5, message);
			
			int rows = pstmt.executeUpdate();
			if(rows != 0) {
				status = true;
			}
		} catch(SQLException sqle) {
			LOGGER.error("Exception occured", sqle);
		} finally {
			closePreparedStatement(pstmt);
			closeStatement(stmt);
			closeConnection(con);
		}
		
		return status;
	}
	
}