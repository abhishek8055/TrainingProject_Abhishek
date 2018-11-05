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
 * The ProductSpecificationDao class contains the database operations
 * related code.
 * 
 * This class belongs to Vendor Module. 
 * 
 * @author Abhishek Dwivedi
 */
public class ProductSpecificationDao extends Dao {
	
	private static final Logger LOGGER = Logger.getLogger(ProductSpecificationDao.class);	
	
	private static ProductSpecificationDao productSpecificationDao;
	
	public static ProductSpecificationDao getInstance() {
		if(productSpecificationDao == null) {
			productSpecificationDao = new ProductSpecificationDao();
		}
		return productSpecificationDao;
	}
		
	
	
	/**
     * Add Product Specification Record in the Table.
     *
     * @param   ProductSpecification
     *          A Product object containing data.
     *
     * @return  boolean
     * 			true if record successfully inserted otherwise else.
     */
		public boolean addProductSpecification(Product product) {
			boolean status = false;
			
			Connection con = null;
			PreparedStatement pstmt = null;
			
			try {
				DataSource dataSource = getDataSource();
				con = dataSource.getConnection();
				
				String sql = "INSERT INTO product_specification (pro_id, spec_in_the_box, spec_model_number, spec_model_name, spec_color, "
						+ "spec_browse_type, spec_sim_type, spec_touch_screen, spec_display_size, spec_resolution, spec_resolution_type, spec_display_type, "
						+ "spec_display_colors, spec_operating_system, spec_processor_type, spec_processor_core, spec_primary_clockspeed, spec_secondary_clockspeed, "
						+ "spec_operating_frequency, spec_internal_storage, spec_ram, spec_expandable_storage, spec_supported_memorycardtype, spec_calllog_memory, "
						+ "spec_primarycamera_available, spec_primarycamera, spec_primarycamera_features, spec_secondarycamera_available, spec_secondarycamera, "
						+ "spec_secondarycamera_features, spec_flash, spec_hdrecording, spec_full_hdrecording, spec_video_recording, spec_videorecording_resolution, spec_frame_rate, "
						+ "spec_phonebook, spec_network_type, spec_supported_networks, spec_internal_connectivity, spec_3g, spec_gprs, spec_preinstalled_browser, "
						+ "spec_bluetooth_support, spec_bluetooth_version, spec_wifi, spec_wifi_version, spec_nfc, spec_usb_connectivity, spec_audio_jack, "
						+ "spec_smart_phone, spec_sim_size, spec_removable_battery, spec_sms, spec_sensors, spec_other_features, spec_important_apps, spec_audio_formats, "
						+ "spec_video_formats, spec_battery_capacity, spec_battery_type, spec_width, spec_height, spec_depth, spec_weight, spec_warranty_summary, vendor_id) "
						+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
						
						
											
				pstmt = openPreparedStatement(con, sql);
				
				pstmt.setInt(1, product.getId());
				pstmt.setString(2, product.getInBox());
				pstmt.setString(3, product.getModelNo());
				pstmt.setString(4, product.getModelName());
				pstmt.setString(5, product.getColor());
				pstmt.setString(6, product.getBrowseType());
				pstmt.setString(7, product.getSimType());
				pstmt.setString(8, product.getTouchScreen());
				pstmt.setString(9, product.getDisplaySize());
				pstmt.setString(10, product.getResolution());
				pstmt.setString(11, product.getResolutionType());
				pstmt.setString(12, product.getDisplayType());
				pstmt.setString(13, product.getDisplayColor());
				pstmt.setString(14, product.getOS());
				pstmt.setString(15, product.getProcessorType());
				pstmt.setString(16, product.getProcessorCore());
				pstmt.setString(17, product.getPrimaryClock());
				pstmt.setString(18, product.getSecondaryClock());
				pstmt.setString(19, product.getOperatingFrequency());
				pstmt.setString(20, product.getInternalStorage());
				pstmt.setString(21, product.getRAM());
				pstmt.setString(22, product.getExternalStorage());
				pstmt.setString(23, product.getMemoryCard());
				pstmt.setString(24, product.getCallLog());
				pstmt.setString(25, product.getIsPrimaryCamera());
				pstmt.setString(26, product.getPrimaryCamera());
				pstmt.setString(27, product.getPrimaryCameraFeature());
				pstmt.setString(28, product.getIsSecondaryCamera());
				pstmt.setString(29, product.getSecondaryCamera());
				pstmt.setString(30, product.getSecondaryCameraFeature());
				pstmt.setString(31, product.getFlash());
				pstmt.setString(32, product.getHDRecording());
				pstmt.setString(33, product.getFullHDRecording());
				pstmt.setString(34, product.getVideoRecording());
				pstmt.setString(35, product.getVideoRecordingResolution());
				pstmt.setString(36, product.getFrameRate());
				pstmt.setString(37, product.getPhoneBook());
				pstmt.setString(38, product.getNetworkType());
				pstmt.setString(39, product.getSupportNetwork());
				pstmt.setString(40, product.getInternetConnectivity());
				pstmt.setString(41, product.getThreeG());
				pstmt.setString(42, product.getGPRS());
				pstmt.setString(43, product.getPreInstalledBrowser());
				pstmt.setString(44, product.getBluetoothSupport());
				pstmt.setString(45, product.getBluetoothVersion());
				pstmt.setString(46, product.getWiFi());
				pstmt.setString(47, product.getWiFiVersion());
				pstmt.setString(48, product.getNFC());
				pstmt.setString(49, product.getUSB());
				pstmt.setString(50, product.getAudio());
				pstmt.setString(51, product.getSmartPhone());
				pstmt.setString(52, product.getSimSize());
				pstmt.setString(53, product.getRemovableBattery());
				pstmt.setString(54, product.getSMS());
				pstmt.setString(55, product.getSensors());
				pstmt.setString(56, product.getOtherFeatures());
				pstmt.setString(57, product.getInstalledApps());
				pstmt.setString(58, product.getAudioFormat());
				pstmt.setString(59, product.getVideoFormat());
				pstmt.setString(60, product.getBatteryCapacity());
				pstmt.setString(61, product.getBatteryType());
				pstmt.setString(62, product.getWidth());
				pstmt.setString(63, product.getHeight());
				pstmt.setString(64, product.getDepth());
				pstmt.setString(65, product.getWeight());
				pstmt.setString(66, product.getWarranty());
				pstmt.setInt(67, product.getVendorId());
				
						
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
	     * Update Product Specification Record in the Table.
	     *
	     * @param   ProductSpecification
	     *          A Product object containing data.
	     *
	     * @return  boolean
	     * 			true if record successfully updated otherwise else.
	     */
		public boolean editProductSpecification(Product product) {
			boolean status = false;
			
			Connection con = null;
			PreparedStatement pstmt = null;
			
			try {
				DataSource dataSource = getDataSource();
				con = dataSource.getConnection();
				
				String sql = "UPDATE product_specification SET spec_in_the_box=?, spec_model_number=?, spec_model_name=?, spec_color=?, "
						+ "spec_browse_type=?, spec_sim_type=?, spec_touch_screen=?, spec_display_size=?, spec_resolution=?, spec_resolution_type=?, spec_display_type=?, "
						+ "spec_display_colors=?, spec_operating_system=?, spec_processor_type=?, spec_processor_core=?, spec_primary_clockspeed=?, spec_secondary_clockspeed=?, "
						+ "spec_operating_frequency=?, spec_internal_storage=?, spec_ram=?, spec_expandable_storage=?, spec_supported_memorycardtype=?, spec_calllog_memory=?, "
						+ "spec_primarycamera_available=?, spec_primarycamera=?, spec_primarycamera_features=?, spec_secondarycamera_available=?, spec_secondarycamera=?, "
						+ "spec_secondarycamera_features=?, spec_flash=?, spec_hdrecording=?, spec_full_hdrecording=?, spec_video_recording=?, spec_videorecording_resolution=?, spec_frame_rate=?, "
						+ "spec_phonebook=?, spec_network_type=?, spec_supported_networks=?, spec_internal_connectivity=?, spec_3g=?, spec_gprs=?, spec_preinstalled_browser=?, "
						+ "spec_bluetooth_support=?, spec_bluetooth_version=?, spec_wifi=?, spec_wifi_version=?, spec_nfc=?, spec_usb_connectivity=?, spec_audio_jack=?, "
						+ "spec_smart_phone=?, spec_sim_size=?, spec_removable_battery=?, spec_sms=?, spec_sensors=?, spec_other_features=?, spec_important_apps=?, spec_audio_formats=?, "
						+ "spec_video_formats=?, spec_battery_capacity=?, spec_battery_type=?, spec_width=?, spec_height=?, spec_depth=?, spec_weight=?, spec_warranty_summary=? "
						+ "WHERE pro_id=?";
				
				
				pstmt = openPreparedStatement(con, sql);
							
				pstmt.setString(1, product.getInBox());
				pstmt.setString(2, product.getModelNo());
				pstmt.setString(3, product.getModelName());
				pstmt.setString(4, product.getColor());
				pstmt.setString(5, product.getBrowseType());
				pstmt.setString(6, product.getSimType());
				pstmt.setString(7, product.getTouchScreen());
				pstmt.setString(8, product.getDisplaySize());
				pstmt.setString(9, product.getResolution());
				pstmt.setString(10, product.getResolutionType());
				pstmt.setString(11, product.getDisplayType());
				pstmt.setString(12, product.getDisplayColor());
				pstmt.setString(13, product.getOS());
				pstmt.setString(14, product.getProcessorType());
				pstmt.setString(15, product.getProcessorCore());
				pstmt.setString(16, product.getPrimaryClock());
				pstmt.setString(17, product.getSecondaryClock());
				pstmt.setString(18, product.getOperatingFrequency());
				pstmt.setString(19, product.getInternalStorage());
				pstmt.setString(20, product.getRAM());
				pstmt.setString(21, product.getExternalStorage());
				pstmt.setString(22, product.getMemoryCard());
				pstmt.setString(23, product.getCallLog());
				pstmt.setString(24, product.getIsPrimaryCamera());
				pstmt.setString(25, product.getPrimaryCamera());
				pstmt.setString(26, product.getPrimaryCameraFeature());
				pstmt.setString(27, product.getIsSecondaryCamera());
				pstmt.setString(28, product.getSecondaryCamera());
				pstmt.setString(29, product.getSecondaryCameraFeature());
				pstmt.setString(30, product.getFlash());
				pstmt.setString(31, product.getHDRecording());
				pstmt.setString(32, product.getFullHDRecording());
				pstmt.setString(33, product.getVideoRecording());
				pstmt.setString(34, product.getVideoRecordingResolution());
				pstmt.setString(35, product.getFrameRate());
				pstmt.setString(36, product.getPhoneBook());
				pstmt.setString(37, product.getNetworkType());
				pstmt.setString(38, product.getSupportNetwork());
				pstmt.setString(39, product.getInternetConnectivity());
				pstmt.setString(40, product.getThreeG());
				pstmt.setString(41, product.getGPRS());
				pstmt.setString(42, product.getPreInstalledBrowser());
				pstmt.setString(43, product.getBluetoothSupport());
				pstmt.setString(44, product.getBluetoothVersion());
				pstmt.setString(45, product.getWiFi());
				pstmt.setString(46, product.getWiFiVersion());
				pstmt.setString(47, product.getNFC());
				pstmt.setString(48, product.getUSB());
				pstmt.setString(49, product.getAudio());
				pstmt.setString(50, product.getSmartPhone());
				pstmt.setString(51, product.getSimSize());
				pstmt.setString(52, product.getRemovableBattery());
				pstmt.setString(53, product.getSMS());
				pstmt.setString(54, product.getSensors());
				pstmt.setString(55, product.getOtherFeatures());
				pstmt.setString(56, product.getInstalledApps());
				pstmt.setString(57, product.getAudioFormat());
				pstmt.setString(58, product.getVideoFormat());
				pstmt.setString(59, product.getBatteryCapacity());
				pstmt.setString(60, product.getBatteryType());
				pstmt.setString(61, product.getWidth());
				pstmt.setString(62, product.getHeight());
				pstmt.setString(63, product.getDepth());
				pstmt.setString(64, product.getWeight());
				pstmt.setString(65, product.getWarranty());
				pstmt.setInt(66, product.getId());
				
				int rows = pstmt.executeUpdate();
				if(rows != 0) {
					status = true;
				}
			} catch(SQLException sqle) {
				//sqle.printStackTrace();
				LOGGER.error("SQL Exception occured", sqle);
			} finally {
				closeConnection(con);
				closePreparedStatement(pstmt);
			}	
			return status;
		}

		
		
		/**
	     * Fetch all Product Specification Record in the Table.
	     *
	     * @param   ProductSpecification
	     *          A Product object containing data.
	     *
	     * @return  boolean
	     * 			true if record successfully fetched otherwise else.
	     */
		public List<Product> selectAllProductSpecification(int vid) {
			
			ArrayList<Product> productList = new ArrayList<>();
			
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				DataSource dataSource = getDataSource();
				con = dataSource.getConnection();
						
				String sql = "SELECT * FROM product_specification WHERE vendor_id=?";
				pstmt = openPreparedStatement(con, sql);
				pstmt.setInt(1, vid);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Product product = new Product();
					
					product.setId(rs.getInt(2));					
					product.setInBox(rs.getString(3));
					product.setModelNo(rs.getString(4));
					product.setModelName(rs.getString(5));
					product.setColor(rs.getString(6));
					product.setBrowseType(rs.getString(7));
					product.setSimType(rs.getString(8));
					product.setTouchScreen(rs.getString(9));
					product.setDisplaySize(rs.getString(10));
					product.setResolution(rs.getString(11));
					product.setResolutionType(rs.getString(12));
					product.setDisplayType(rs.getString(13));
					product.setDisplayColor(rs.getString(14));
					product.setOS(rs.getString(15));
					product.setProcessorType(rs.getString(16));
					product.setProcessorCore(rs.getString(17));
					product.setPrimaryClock(rs.getString(18));
					product.setSecondaryClock(rs.getString(19));
					product.setOperatingFrequency(rs.getString(20));
					product.setInternalStorage(rs.getString(21));
					product.setRAM(rs.getString(22));
					product.setExternalStorage(rs.getString(23));
					product.setMemoryCard(rs.getString(24));
					product.setCallLog(rs.getString(25));
					product.setIsPrimaryCamera(rs.getString(26));
					product.setPrimaryCamera(rs.getString(27));
					product.setPrimaryCameraFeature(rs.getString(28));
					product.setIsSecondaryCamera(rs.getString(29));
					product.setSecondaryCamera(rs.getString(30));
					product.setSecondaryCameraFeature(rs.getString(31));
					product.setFlash(rs.getString(32));
					product.setHDRecording(rs.getString(33));
					product.setFullHDRecording(rs.getString(34));
					product.setVideoRecording(rs.getString(35));
					product.setVideoRecordingResolution(rs.getString(36));
					product.setFrameRate(rs.getString(37));
					product.setPhoneBook(rs.getString(38));
					product.setNetworkType(rs.getString(39));
					product.setSupportNetwork(rs.getString(40));
					product.setInternetConnectivity(rs.getString(41));
					product.setThreeG(rs.getString(42));
					product.setGPRS(rs.getString(43));
					product.setPreInstalledBrowser(rs.getString(44));
					product.setBluetoothSupport(rs.getString(45));
					product.setBluetoothVersion(rs.getString(46));
					product.setWiFi(rs.getString(47));
					product.setWiFiVersion(rs.getString(48));
					product.setNFC(rs.getString(49));
					product.setUSB(rs.getString(50));
					product.setAudio(rs.getString(51));
					product.setSmartPhone(rs.getString(52));
					product.setSimSize(rs.getString(53));
					product.setRemovableBattery(rs.getString(54));
					product.setSMS(rs.getString(55));
					product.setSensors(rs.getString(56));
					product.setOtherFeatures(rs.getString(57));
					product.setInstalledApps(rs.getString(58));
					product.setAudioFormat(rs.getString(59));
					product.setVideoFormat(rs.getString(60));
					product.setBatteryCapacity(rs.getString(61));
					product.setBatteryType(rs.getString(62));
					product.setWidth(rs.getString(63));
					product.setHeight(rs.getString(64));
					product.setDepth(rs.getString(65));
					product.setWeight(rs.getString(66));
					product.setWarranty(rs.getString(67));
								
					productList.add(product);
				}
			} catch(SQLException sqle) {
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
						
				String sql = "SELECT * FROM product_specification";
				pstmt = openPreparedStatement(con, sql);
				
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Product product = new Product();
					
					product.setId(rs.getInt(2));					
					product.setInBox(rs.getString(3));
					product.setModelNo(rs.getString(4));
					product.setModelName(rs.getString(5));
					product.setColor(rs.getString(6));
					product.setBrowseType(rs.getString(7));
					product.setSimType(rs.getString(8));
					product.setTouchScreen(rs.getString(9));
					product.setDisplaySize(rs.getString(10));
					product.setResolution(rs.getString(11));
					product.setResolutionType(rs.getString(12));
					product.setDisplayType(rs.getString(13));
					product.setDisplayColor(rs.getString(14));
					product.setOS(rs.getString(15));
					product.setProcessorType(rs.getString(16));
					product.setProcessorCore(rs.getString(17));
					product.setPrimaryClock(rs.getString(18));
					product.setSecondaryClock(rs.getString(19));
					product.setOperatingFrequency(rs.getString(20));
					product.setInternalStorage(rs.getString(21));
					product.setRAM(rs.getString(22));
					product.setExternalStorage(rs.getString(23));
					product.setMemoryCard(rs.getString(24));
					product.setCallLog(rs.getString(25));
					product.setIsPrimaryCamera(rs.getString(26));
					product.setPrimaryCamera(rs.getString(27));
					product.setPrimaryCameraFeature(rs.getString(28));
					product.setIsSecondaryCamera(rs.getString(29));
					product.setSecondaryCamera(rs.getString(30));
					product.setSecondaryCameraFeature(rs.getString(31));
					product.setFlash(rs.getString(32));
					product.setHDRecording(rs.getString(33));
					product.setFullHDRecording(rs.getString(34));
					product.setVideoRecording(rs.getString(35));
					product.setVideoRecordingResolution(rs.getString(36));
					product.setFrameRate(rs.getString(37));
					product.setPhoneBook(rs.getString(38));
					product.setNetworkType(rs.getString(39));
					product.setSupportNetwork(rs.getString(40));
					product.setInternetConnectivity(rs.getString(41));
					product.setThreeG(rs.getString(42));
					product.setGPRS(rs.getString(43));
					product.setPreInstalledBrowser(rs.getString(44));
					product.setBluetoothSupport(rs.getString(45));
					product.setBluetoothVersion(rs.getString(46));
					product.setWiFi(rs.getString(47));
					product.setWiFiVersion(rs.getString(48));
					product.setNFC(rs.getString(49));
					product.setUSB(rs.getString(50));
					product.setAudio(rs.getString(51));
					product.setSmartPhone(rs.getString(52));
					product.setSimSize(rs.getString(53));
					product.setRemovableBattery(rs.getString(54));
					product.setSMS(rs.getString(55));
					product.setSensors(rs.getString(56));
					product.setOtherFeatures(rs.getString(57));
					product.setInstalledApps(rs.getString(58));
					product.setAudioFormat(rs.getString(59));
					product.setVideoFormat(rs.getString(60));
					product.setBatteryCapacity(rs.getString(61));
					product.setBatteryType(rs.getString(62));
					product.setWidth(rs.getString(63));
					product.setHeight(rs.getString(64));
					product.setDepth(rs.getString(65));
					product.setWeight(rs.getString(66));
					product.setWarranty(rs.getString(67));
								
					productList.add(product);
				}
			} catch(SQLException sqle) {
				LOGGER.error("SQL Exception occured", sqle);
			} finally {
				closePreparedStatement(pstmt);
				closeResultSet(rs);
				closeConnection(con);
			}
			return productList;
		}
	
}
