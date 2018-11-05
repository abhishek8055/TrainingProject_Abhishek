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

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.log4j.Logger;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDataSource;
import org.apache.commons.pool2.impl.GenericObjectPool;


/**
 * The CustomerDao class contains the database operations
 * related code.
 * 
 * This class belongs to Customer Module. 
 * 
 * @author Abhishek Dwivedi
 */
public class Dao {
	
	private static final Logger LOGGER = Logger.getLogger(Dao.class);
	
	private static DataSource dataSource = null;
	
	static {
		Properties  properties = new Properties();
		InputStream inputStream = Dao.class.getClassLoader().getResourceAsStream("db.properties");
		
		try {
			properties.load(inputStream);
		} catch (IOException ioe) {
			LOGGER.error("Exception Occored", ioe);
		}
		
		DriverManagerConnectionFactory connectionFactory = new DriverManagerConnectionFactory(properties.getProperty("jdbc.url"), properties.getProperty("jdbc.username"), properties.getProperty("jdbc.password"));
		PoolableConnectionFactory poolableConnectionFactory = new PoolableConnectionFactory(connectionFactory, null);
		GenericObjectPool<PoolableConnection> connectionPool = new GenericObjectPool<>(poolableConnectionFactory);
		connectionPool.setMaxTotal(5);
		poolableConnectionFactory.setPool(connectionPool);
		
		PoolingDataSource<PoolableConnection> poolingDataSource = new PoolingDataSource<>(connectionPool);
		dataSource = poolingDataSource;
	}
	
	
	/**
     * Creating a new DataSource.
     *
     *
     * @return  DataSource
     * 			
     */
	protected static DataSource getDataSource() {
		return dataSource;	
	}
	
	
	/**
     * Closing a new DataSource.
     *
     *
     * @return  DataSource
     * 			
     */
	protected static void shutdownDataSource() {
		@SuppressWarnings("unchecked")
		PoolingDataSource<PoolableConnection> poolingDataSource = (PoolingDataSource<PoolableConnection>) dataSource;
		try {
			poolingDataSource.close();
		} catch (Exception e) {
			LOGGER.error("Exception Occured", e);
		}
	}
	
	
	/**
     * Closing existing Connection.
     *
     *
     * @return  VOID
     * 			
     */
	protected void closeConnection(Connection con) {
		if(con != null) {
			try {
				con.close();
			} catch(SQLException sqle) {
				LOGGER.error("Exception Occured", sqle);
			}
		}
	}
	
	
	/**
     * Closing existing Statement.
     *
     *
     * @return  VOID
     * 			
     */
	protected void closeStatement(Statement stmt) {
		if(stmt != null) {
			try {
				stmt.close();
			} catch(SQLException sqle) {
				LOGGER.error("Exception Occured", sqle);
			}
		}
	}
	
	
	/**
     * Closing existing ResultSet.
     *
     *
     * @return  VOID
     * 			
     */
	protected void closeResultSet(ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			} catch(SQLException sqle) {
				LOGGER.error("Exception Occured", sqle);
			}
		}
	}
		
	
	/**
     * Opening a new PreparedStatement.
     *
     *
     * @return  PreparedStatement
     * 			
     */
	protected PreparedStatement openPreparedStatement(Connection con, String sql) {
		if(con != null) {
			try {
				return (PreparedStatement)con.prepareStatement(sql);
			
			}  catch(SQLException sqle) {
				LOGGER.error("Exception occured", sqle);
			}
		}
		
		return null;
	}
	
	
	/**
     * Closing existing PreparedStatement.
     *
     *
     * @return  VOID
     * 			
     */
	protected void closePreparedStatement(PreparedStatement pstmt) {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch(SQLException sqle) {
				LOGGER.error("Exception occured", sqle);
			}
		}
	}

}