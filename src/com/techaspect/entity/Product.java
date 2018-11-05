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
package com.techaspect.entity;

/**
 * The Customer class represents a Customer Record.
 * It includes properties for storing data and methods for
 * retrieving & setting values in the properties.
 * 
 * @author  Abhishek Dwivedi
 */

public class Product {
	
	//PRODUCT_INFORMATION
	/** The value is used for Integer storage representing PRODUCT's ID. */
	private int id;
	/** The value is used for String storage representing PRODUCT's NAME. */
	private String name;
	/** The value is used for String storage representing PRODUCT's price. */
	private String price;
	/** The value is used for String storage representing PRODUCT's sdesc. */
	private String sdesc;
	/** The value is used for String storage representing PRODUCT's quantity. */
	private String quantity;
	/** The value is used for String storage representing PRODUCT's image1. */
	private String image1;
	/** The value is used for String storage representing PRODUCT's image2. */
	private String image2;
	/** The value is used for String storage representing PRODUCT's image3. */
	private String image3;
	/** The value is used for String storage representing PRODUCT's image4. */
	private String image4;
	/** The value is used for String storage representing PRODUCT's image5. */
	private String image5;
	/** The value is used for String storage representing PRODUCT's vendorId. */
	private int vendorId;
	
	//PRODUCT_DESCRIPTION
	/** The value is used for String storage representing PRODUCT's desc1. */
	private String desc1;
	/** The value is used for String storage representing PRODUCT's dContent1. */
	private String dContent1;
	/** The value is used for String storage representing PRODUCT's desc2. */
	private String desc2;
	/** The value is used for String storage representing PRODUCT's dContent2. */
	private String dContent2;
	/** The value is used for String storage representing PRODUCT's desc3. */
	private String desc3;
	/** The value is used for String storage representing PRODUCT's dContent3. */
	private String dContent3;
	/** The value is used for String storage representing PRODUCT's desc4. */
	private String desc4;
	/** The value is used for String storage representing PRODUCT's dContent4. */
	private String dContent4;
	/** The value is used for String storage representing PRODUCT's desc5. */
	private String desc5;
	/** The value is used for String storage representing PRODUCT's dContent5. */
	private String dContent5;
	/** The value is used for String storage representing PRODUCT's desc6. */
	private String desc6;
	/** The value is used for String storage representing PRODUCT's dContent6. */
	private String dContent6;
	/** The value is used for String storage representing PRODUCT's desc7. */
	private String desc7;
	/** The value is used for String storage representing PRODUCT's dContent7. */
	private String dContent7;
	/** The value is used for String storage representing PRODUCT's desc8. */
	private String desc8;
	/** The value is used for String storage representing PRODUCT's dContent8. */
	private String dContent8;
	/** The value is used for String storage representing PRODUCT's desc9. */
	private String desc9;
	/** The value is used for String storage representing PRODUCT's vendorId. */
	private String dContent9;
	/** The value is used for String storage representing PRODUCT's desc10. */
	private String desc10;
	/** The value is used for String storage representing PRODUCT's dContent10. */
	private String dContent10;
	
//PRODUCT_SPECIFICATION
	//GENERAL
	/** The value is used for String storage representing PRODUCT's inBox. */
	private String inBox;
	/** The value is used for String storage representing PRODUCT's modelNo. */
	private String modelNo;
	/** The value is used for String storage representing PRODUCT's modelName. */
	private String modelName;
	/** The value is used for String storage representing PRODUCT's color. */
	private String color;
	/** The value is used for String storage representing PRODUCT's browseType. */
	private String browseType;
	/** The value is used for String storage representing PRODUCT's simType. */
	private String simType;
	/** The value is used for String storage representing PRODUCT's touchScreen. */
	private String touchScreen;
	
	//DISPLAY
	/** The value is used for String storage representing PRODUCT's displaySize. */
	private String displaySize;
	/** The value is used for String storage representing PRODUCT's resolution. */
	private String resolution;
	/** The value is used for String storage representing PRODUCT's resolutionType. */
	private String resolutionType;
	/** The value is used for String storage representing PRODUCT's displayType. */
	private String displayType;
	/** The value is used for String storage representing PRODUCT's displayColor. */
	private String displayColor;
	
	//OS_AND_PROCESSOR
	/** The value is used for String storage representing PRODUCT's OS. */
	private String os;
	/** The value is used for String storage representing PRODUCT's processorType. */
	private String processorType;
	/** The value is used for String storage representing PRODUCT's processorCore. */
	private String processorCore;
	/** The value is used for String storage representing PRODUCT's primaryClock. */
	private String primaryClock;
	/** The value is used for String storage representing PRODUCT's secondaryClock. */
	private String secondaryClock;
	/** The value is used for String storage representing PRODUCT's operatingFrequency. */
	private String operatingFrequency;
	
	
	//MEMORY_AND_STORAGE
	/** The value is used for String storage representing PRODUCT's internalStorage. */
	private String internalStorage;
	/** The value is used for String storage representing PRODUCT's ram. */
	private String ram;
	/** The value is used for String storage representing PRODUCT's externalStorage. */
	private String externalStorage;
	/** The value is used for String storage representing PRODUCT's memoryCard. */
	private String memoryCard;
	/** The value is used for String storage representing PRODUCT's callLog. */
	private String callLog;
	
	//CAMERA
	/** The value is used for String storage representing PRODUCT's isPCamera. */
	private String isPCamera;
	/** The value is used for String storage representing PRODUCT's primaryCamera. */
	private String primaryCamera;
	/** The value is used for String storage representing PRODUCT's pCameraFeature. */
	private String pCameraFeature;
	/** The value is used for String storage representing PRODUCT's isSCamera. */
	private String isSCamera;
	/** The value is used for String storage representing PRODUCT's secondaryCamera. */
	private String secondaryCamera;
	/** The value is used for String storage representing PRODUCT's sCameraFeature. */
	private String sCameraFeature;
	/** The value is used for String storage representing PRODUCT's flash. */
	private String flash;
	/** The value is used for String storage representing PRODUCT's HDrecording. */
	private String HDrecording;
	/** The value is used for String storage representing PRODUCT's FHDrecording. */
	private String FHDrecording;
	/** The value is used for String storage representing PRODUCT's videoRecording. */
	private String videoRecording;
	/** The value is used for String storage representing PRODUCT's vRecordingResolution. */
	private String vRecordingResolution;
	/** The value is used for String storage representing PRODUCT's frameRate. */
	private String frameRate;
	
	//CALL_FEATURE
	/** The value is used for String storage representing PRODUCT's phoneBook. */
	private String phoneBook;
	
	//CONNECTIVITY
	/** The value is used for String storage representing PRODUCT's networkType. */
	private String networkType;
	/** The value is used for String storage representing PRODUCT's supportNetwork. */
	private String supportNetwork;
	/** The value is used for String storage representing PRODUCT's internetConnectivity. */
	private String internetConnectivity;
	/** The value is used for String storage representing PRODUCT's threeG. */
	private String threeG;
	/** The value is used for String storage representing PRODUCT's gprs. */
	private String gprs;
	/** The value is used for String storage representing PRODUCT's pBrowser. */
	private String pBrowser;
	/** The value is used for String storage representing PRODUCT's bluetoothSupport. */
	private String bluetoothSupport;
	/** The value is used for String storage representing PRODUCT's bluetoothVersion. */
	private String bluetoothVersion;
	/** The value is used for String storage representing PRODUCT's wifi. */
	private String wifi;
	/** The value is used for String storage representing PRODUCT's wifiVersion. */
	private String wifiVersion;
	/** The value is used for String storage representing PRODUCT's nfc. */
	private String nfc;
	/** The value is used for String storage representing PRODUCT's usb. */
	private String usb;
	/** The value is used for String storage representing PRODUCT's audio. */
	private String audio;
	
	//OTHER_DETAILS
	/** The value is used for String storage representing PRODUCT's smartPhone. */
	private String smartPhone;
	/** The value is used for String storage representing PRODUCT's simSize. */
	private String simSize;
	/** The value is used for String storage representing PRODUCT's removableBattery. */
	private String removableBattery;
	/** The value is used for String storage representing PRODUCT's sms. */
	private String sms;
	/** The value is used for String storage representing PRODUCT's sensors. */
	private String sensors;
	/** The value is used for String storage representing PRODUCT's otherFeatures. */
	private String otherFeatures;
	/** The value is used for String storage representing PRODUCT's installedApps. */
	private String installedApps;
	
	//MULTIMEDIA
	/** The value is used for String storage representing PRODUCT's audioFormat. */
	private String audioFormat;
	/** The value is used for String storage representing PRODUCT's videoFormat. */
	private String videoFormat;
	
	//BATTERY
	/** The value is used for String storage representing PRODUCT's batteryCapacity. */
	private String batteryCapacity;
	/** The value is used for String storage representing PRODUCT's batteryType. */
	private String batteryType;
	
	//DIMESSION
	/** The value is used for String storage representing PRODUCT's width. */
	private String width;
	/** The value is used for String storage representing PRODUCT's height. */
	private String height;
	/** The value is used for String storage representing PRODUCT's depth. */
	private String depth;
	/** The value is used for String storage representing PRODUCT's weight. */
	private String weight;
	
	//WARRANTY
	/** The value is used for String storage representing PRODUCT's warranty. */
	private String warranty;
	
	/**
     * Initializes a newly created Product object so that it represents
     * an empty Product.
     */
	public Product() {
		
	}
	
	/**
     * Initializes a newly created Product object so that it represents
     * a Product with attributes.
     *
     * @param  id
     *         The Product ID of the Product.
     *         
     * @param  name
     *         The name of the Product.
     *         
     * @param  price
     *         The price of the Product.
     *         
     * @param  quantity
     *         The quantity of the Product.
     *         
     * @param  short description
     *         The description of the Product.
     *         
     * @param  Image1
     *         The Image1 of the Product.
     *         
     * @param  Image2
     *         The Image2 of the Product.
     *         
     * @param  Image3
     *         The Image3 of the Product.
     *         
     * @param  Image4
     *         The Image4 of the Product.
     *         
     * @param  Image5
     *         The Image5 of the Product.
     *         
     */
	public Product(int id, String name, String price, String quantity, String sdesc, String image1, String image2, String image3, String image4, String image5, int vendorId ) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.sdesc = sdesc;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.image5 = image5;
		this.vendorId = vendorId;
	}
	public Product(String name, String price, String quantity, String sdesc, String image1, String image2, String image3, String image4, String image5, int vendorId ) {
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.sdesc = sdesc;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.image5 = image5;
		this.vendorId = vendorId;
	}
	
//GETTER/ACCESSOR METHODS
	
	//PRODUCT_INFORMATION
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code integer value.
     *             The ID of Product.
     */
	public int getId() {
		return id;
	}
	/**
     * Retrieves the value of the property Name.
     *
     * @return     A code String value.
     *             The Name of Product.
     */
	public String getName() {
		return name;
	}
	/**
     * Retrieves the value of the property price.
     *
     * @return     A code String value.
     *             The price of Product.
     */
	public String getPrice() {
		return price;
	}
	/**
     * Retrieves the value of the property quantity.
     *
     * @return     A code String value.
     *             The quantity of Product.
     */
	public String getQuantity() {
		return quantity;
	}
	/**
     * Retrieves the value of the property ShortDescription.
     *
     * @return     A code String value.
     *             The ShortDescription of Product.
     */
	public String getSDesc() {
		return sdesc;
	}
	/**
     * Retrieves the value of the property image1.
     *
     * @return     A code String value.
     *             The image1 of Product.
     */
	public String getImage1() {
		return image1;
	}
	/**
     * Retrieves the value of the property image2.
     *
     * @return     A code String value.
     *             The image2 of Product.
     */
	public String getImage2() {
		return image2;
	}
	/**
     * Retrieves the value of the property image3.
     *
     * @return     A code String value.
     *             The image3 of Product.
     */
	public String getImage3() {
		return image3;
	}
	/**
     * Retrieves the value of the property image4.
     *
     * @return     A code String value.
     *             The image4 of Product.
     */
	public String getImage4() {
		return image4;
	}
	/**
     * Retrieves the value of the property image5.
     *
     * @return     A code String value.
     *             The image5 of Product.
     */
	public String getImage5() {
		return image5;
	}
	/**
     * Retrieves the value of the property vendorId.
     *
     * @return     A code String value.
     *             The vendorId of Product.
     */
	public int getVendorId() {
		return vendorId;
	}
	
	
	//PRODUCT_DESCRIPTION
	/**
     * Retrieves the value of the property desc1.
     *
     * @return     A code String value.
     *             The desc1 of Product.
     */
	public String getDESC1() {
		return desc1;
	}
	/**
     * Retrieves the value of the property dContent1.
     *
     * @return     A code String value.
     *             The dContent1 of Product.
     */
	public String getDContent1() {
		return dContent1;
	}
	/**
     * Retrieves the value of the property desc2.
     *
     * @return     A code String value.
     *             The desc2 of Product.
     */
	public String getDESC2() {
		return desc2;
	}
	/**
     * Retrieves the value of the property dContent2.
     *
     * @return     A code String value.
     *             The dContent2 of Product.
     */
	public String getDContent2() {
		return dContent2;
	}
	/**
     * Retrieves the value of the property desc3.
     *
     * @return     A code String value.
     *             The desc3 of Product.
     */
	public String getDESC3() {
		return desc3;
	}
	/**
     * Retrieves the value of the property dContent3.
     *
     * @return     A code String value.
     *             The dContent3 of Product.
     */
	public String getDContent3() {
		return dContent3;
	}
	/**
     * Retrieves the value of the property desc4.
     *
     * @return     A code String value.
     *             The desc4 of Product.
     */
	public String getDESC4() {
		return desc4;
	}
	/**
     * Retrieves the value of the property dContent4.
     *
     * @return     A code String value.
     *             The dContent4 of Product.
     */
	public String getDContent4() {
		return dContent4;
	}
	/**
     * Retrieves the value of the property desc5.
     *
     * @return     A code String value.
     *             The desc5 of Product.
     */
	public String getDESC5() {
		return desc5;
	}
	/**
     * Retrieves the value of the property dContent5.
     *
     * @return     A code String value.
     *             The dContent5 of Product.
     */
	public String getDContent5() {
		return dContent5;
	}
	/**
     * Retrieves the value of the property desc6.
     *
     * @return     A code String value.
     *             The desc6 of Product.
     */
	public String getDESC6() {
		return desc6;
	}
	/**
     * Retrieves the value of the property dContent6.
     *
     * @return     A code String value.
     *             The dContent6 of Product.
     */
	public String getDContent6() {
		return dContent6;
	}
	/**
     * Retrieves the value of the property desc7.
     *
     * @return     A code String value.
     *             The desc7 of Product.
     */
	public String getDESC7() {
		return desc7;
	}
	/**
     * Retrieves the value of the property dContent7.
     *
     * @return     A code String value.
     *             The dContent7 of Product.
     */
	public String getDContent7() {
		return dContent7;
	}
	/**
     * Retrieves the value of the property desc8.
     *
     * @return     A code String value.
     *             The desc8 of Product.
     */
	public String getDESC8() {
		return desc8;
	}
	/**
     * Retrieves the value of the property dContent8.
     *
     * @return     A code String value.
     *             The dContent8 of Product.
     */
	public String getDContent8() {
		return dContent8;
	}
	/**
     * Retrieves the value of the property Description9.
     *
     * @return     A code String value.
     *             The Description9 of Product.
     */
	public String getDESC9() {
		return desc9;
	}
	/**
     * Retrieves the value of the property DescriptionContent9.
     *
     * @return     A code String value.
     *             The DescriptionContent9 of Product.
     */
	public String getDContent9() {
		return dContent9;
	}
	/**
     * Retrieves the value of the property Description10.
     *
     * @return     A code String value.
     *             The Description10 of Product.
     */
	public String getDESC10() {
		return desc10;
	}
	/**
     * Retrieves the value of the property DescriptionContent10.
     *
     * @return     A code String value.
     *             The DescriptionContent10 of Product.
     */
	public String getDContent10() {
		return dContent10;
	}
	
	//GENERAL
	/**
     * Retrieves the value of the property inBox.
     *
     * @return     A code String value.
     *             The inBox of Product.
     */
	public String getInBox() {
		return inBox;
	}
	/**
     * Retrieves the value of the property modelNo.
     *
     * @return     A code String value.
     *             The modelNo of Product.
     */
	public String getModelNo() {
		return modelNo;
	}
	/**
     * Retrieves the value of the property modelName.
     *
     * @return     A code String value.
     *             The modelName of Product.
     */
	public String getModelName() {
		return modelName;
	}
	/**
     * Retrieves the value of the property color.
     *
     * @return     A code String value.
     *             The color of Product.
     */
	public String getColor() {
		return color;
	}
	/**
     * Retrieves the value of the property browseType.
     *
     * @return     A code String value.
     *             The browseType of Product.
     */
	public String getBrowseType() {
		return browseType;
	}
	/**
     * Retrieves the value of the property simType.
     *
     * @return     A code String value.
     *             The simType of Product.
     */
	public String getSimType() {
		return simType;
	}
	/**
     * Retrieves the value of the property touchScreen.
     *
     * @return     A code String value.
     *             The touchScreen of Product.
     */
	public String getTouchScreen() {
		return touchScreen;
	}
	
	//DISPLAY
	/**
     * Retrieves the value of the property displaySize.
     *
     * @return     A code String value.
     *             The displaySize of Product.
     */
	public String getDisplaySize() {
		return displaySize;
	}
	/**
     * Retrieves the value of the property resolution.
     *
     * @return     A code String value.
     *             The resolution of Product.
     */
	public String getResolution() {
		return resolution;
	}
	/**
     * Retrieves the value of the property resolutionType.
     *
     * @return     A code String value.
     *             The resolutionType of Product.
     */
	public String getResolutionType() {
		return resolutionType;
	}
	/**
     * Retrieves the value of the property displayType.
     *
     * @return     A code String value.
     *             The displayType of Product.
     */
	public String getDisplayType() {
		return displayType;
	}
	/**
     * Retrieves the value of the property displayColor.
     *
     * @return     A code String value.
     *             The displayColor of Product.
     */
	public String getDisplayColor() {
		return displayColor;
	}
	
	//OS_AND_PROCESSOR
	
	/**
     * Retrieves the value of the property OS.
     *
     * @return     A code String value.
     *             The OS of Product.
     */
	public String getOS() {
		return os;
	}
	/**
     * Retrieves the value of the property processorType.
     *
     * @return     A code String value.
     *             The processorType of Product.
     */
	public String getProcessorType() {
		return processorType;
	}
	/**
     * Retrieves the value of the property processorCore.
     *
     * @return     A code String value.
     *             The processorCore of Product.
     */
	public String getProcessorCore() {
		return processorCore;
	}
	/**
     * Retrieves the value of the property primaryClock.
     *
     * @return     A code String value.
     *             The primaryClock of Product.
     */
	public String getPrimaryClock() {
		return primaryClock;
	}
	/**
     * Retrieves the value of the property secondaryClock.
     *
     * @return     A code String value.
     *             The secondaryClock of Product.
     */
	public String getSecondaryClock() {
		return secondaryClock;
	}
	/**
     * Retrieves the value of the property operatingFrequency.
     *
     * @return     A code String value.
     *             The operatingFrequency of Product.
     */
	public String getOperatingFrequency() {
		return operatingFrequency;
	}
	
	
	
	//MEMORY_AND_STORAGE
	
	/**
     * Retrieves the value of the property internalStorage.
     *
     * @return     A code String value.
     *             The internalStorage of Product.
     */
	public String getInternalStorage() {
		return internalStorage;
	}
	/**
     * Retrieves the value of the property RAM.
     *
     * @return     A code String value.
     *             The RAM of Product.
     */
	public String getRAM() {
		return ram;
	}
	/**
     * Retrieves the value of the property externalStorage.
     *
     * @return     A code String value.
     *             The externalStorage of Product.
     */
	public String getExternalStorage() {
		return externalStorage;
	}
	/**
     * Retrieves the value of the property memoryCard.
     *
     * @return     A code String value.
     *             The memoryCard of Product.
     */
	public String getMemoryCard() {
		return memoryCard;
	}
	/**
     * Retrieves the value of the property callLog.
     *
     * @return     A code String value.
     *             The callLog of Product.
     */
	public String getCallLog() {
		return callLog;
	}
	
	
	
	//CAMERA
	
	/**
     * Retrieves the value of the property isPCamera.
     *
     * @return     A code String value.
     *             The isPCamera of Product.
     */
	public String getIsPrimaryCamera() {
		return isPCamera;
	}
	/**
     * Retrieves the value of the property primaryCamera.
     *
     * @return     A code String value.
     *             The primaryCamera of Product.
     */
	public String getPrimaryCamera() {
		return primaryCamera;
	}
	/**
     * Retrieves the value of the property pCameraFeature.
     *
     * @return     A code String value.
     *             The pCameraFeature of Product.
     */
	public String getPrimaryCameraFeature() {
		return pCameraFeature;
	}
	/**
     * Retrieves the value of the property isSCamera.
     *
     * @return     A code String value.
     *             The isSCamera of Product.
     */
	public String getIsSecondaryCamera() {
		return isSCamera;
	}
	/**
     * Retrieves the value of the property secondaryCamera.
     *
     * @return     A code String value.
     *             The secondaryCamera of Product.
     */
	public String getSecondaryCamera() {
		return secondaryCamera;
	}
	/**
     * Retrieves the value of the property sCameraFeature.
     *
     * @return     A code String value.
     *             The sCameraFeature of Product.
     */
	public String getSecondaryCameraFeature() {
		return sCameraFeature;
	}
	/**
     * Retrieves the value of the property flash.
     *
     * @return     A code String value.
     *             The flash of Product.
     */
	public String getFlash() {
		return flash;
	}
	/**
     * Retrieves the value of the property HDrecording.
     *
     * @return     A code String value.
     *             The HDrecording of Product.
     */
	public String getHDRecording() {
		return HDrecording;
	}
	/**
     * Retrieves the value of the property FHDrecording.
     *
     * @return     A code String value.
     *             The FHDrecording of Product.
     */
	public String getFullHDRecording() {
		return FHDrecording;
	}
	/**
     * Retrieves the value of the property videoRecording.
     *
     * @return     A code String value.
     *             The videoRecording of Product.
     */
	public String getVideoRecording() {
		return videoRecording;
	}
	/**
     * Retrieves the value of the property vRecordingResolution.
     *
     * @return     A code String value.
     *             The vRecordingResolution of Product.
     */
	public String getVideoRecordingResolution() {
		return vRecordingResolution;
	}
	/**
     * Retrieves the value of the property callLog.
     *
     * @return     A code String value.
     *             The frameRate of Product.
     */
	public String getFrameRate() {
		return frameRate;
	}
	
	
	
	//CALL_FEATURE
	
	/**
     * Retrieves the value of the property phoneBook.
     *
     * @return     A code String value.
     *             The phoneBook of Product.
     */
	public String getPhoneBook() {
		return phoneBook;
	}
	
	
	
	//CONNECTIVITY
	
	/**
     * Retrieves the value of the property networkType.
     *
     * @return     A code String value.
     *             The networkType of Product.
     */
	public String getNetworkType() {
		return networkType;
	}
	/**
     * Retrieves the value of the property supportNetwork.
     *
     * @return     A code String value.
     *             The supportNetwork of Product.
     */
	public String getSupportNetwork() {
		return supportNetwork;
	}
	/**
     * Retrieves the value of the property 3G.
     *
     * @return     A code String value.
     *             The 3G of Product.
     */
	public String getInternetConnectivity() {
		return internetConnectivity;
	}
	/**
     * Retrieves the value of the property phoneBook.
     *
     * @return     A code String value.
     *             The phoneBook of Product.
     */
	public String getThreeG() {
		return threeG;
	}
	/**
     * Retrieves the value of the property GPRS.
     *
     * @return     A code String value.
     *             The GPRS of Product.
     */
	public String getGPRS() {
		return gprs;
	}
	/**
     * Retrieves the value of the property pBrowser.
     *
     * @return     A code String value.
     *             The pBrowser of Product.
     */
	public String getPreInstalledBrowser() {
		return pBrowser;
	}
	/**
     * Retrieves the value of the property bluetoothSupport.
     *
     * @return     A code String value.
     *             The bluetoothSupport of Product.
     */
	public String getBluetoothSupport() {
		return bluetoothSupport;
	}
	/**
     * Retrieves the value of the property bluetoothVersion.
     *
     * @return     A code String value.
     *             The bluetoothVersion of Product.
     */
	public String getBluetoothVersion() {
		return bluetoothVersion;
	}
	/**
     * Retrieves the value of the property wifi.
     *
     * @return     A code String value.
     *             The wifi of Product.
     */
	public String getWiFi() {
		return wifi;
	}
	/**
     * Retrieves the value of the property wifiVersion.
     *
     * @return     A code String value.
     *             The wifiVersion of Product.
     */
	public String getWiFiVersion() {
		return wifiVersion;
	}
	/**
     * Retrieves the value of the property nfc.
     *
     * @return     A code String value.
     *             The nfc of Product.
     */
	public String getNFC() {
		return nfc;
	}
	/**
     * Retrieves the value of the property usb.
     *
     * @return     A code String value.
     *             The usb of Product.
     */
	public String getUSB() {
		return usb;
	}
	/**
     * Retrieves the value of the property audio.
     *
     * @return     A code String value.
     *             The audio of Product.
     */
	public String getAudio() {
		return audio;
	}
	
	
	
	
	//OTHER_DETAILS
	
	/**
     * Retrieves the value of the property smartPhone.
     *
     * @return     A code String value.
     *             The smartPhone of Product.
     */
	public String getSmartPhone() {
		return smartPhone;
	}
	/**
     * Retrieves the value of the property simSize.
     *
     * @return     A code String value.
     *             The simSize of Product.
     */
	public String getSimSize() {
		return simSize;
	}
	/**
     * Retrieves the value of the property removableBattery.
     *
     * @return     A code String value.
     *             The removableBattery of Product.
     */
	public String getRemovableBattery() {
		return removableBattery;
	}
	/**
     * Retrieves the value of the property SMS.
     *
     * @return     A code String value.
     *             The SMS of Product.
     */
	public String getSMS() {
		return sms;
	}
	/**
     * Retrieves the value of the property sensors.
     *
     * @return     A code String value.
     *             The sensors of Product.
     */
	public String getSensors() {
		return sensors;
	}
	/**
     * Retrieves the value of the property otherFeatures.
     *
     * @return     A code String value.
     *             The otherFeatures of Product.
     */
	public String getOtherFeatures() {
		return otherFeatures;
	}
	/**
     * Retrieves the value of the property installedApps.
     *
     * @return     A code String value.
     *             The installedApps of Product.
     */
	public String getInstalledApps() {
		return installedApps;
	}
	
	
	
	//MULTIMEDIA
	
	/**
     * Retrieves the value of the property audioFormat.
     *
     * @return     A code String value.
     *             The audioFormat of Product.
     */
	public String getAudioFormat() {
		return audioFormat;
	}
	/**
     * Retrieves the value of the property videoFormat.
     *
     * @return     A code String value.
     *             The videoFormat of Product.
     */
	public String getVideoFormat() {
		return videoFormat;
	}
	
	
	
	//BATTERY
	
	/**
     * Retrieves the value of the property batteryCapacity.
     *
     * @return     A code String value.
     *             The batteryCapacity of Product.
     */
	public String getBatteryCapacity() {
		return batteryCapacity;
	}
	/**
     * Retrieves the value of the property batteryType.
     *
     * @return     A code String value.
     *             The batteryType of Product.
     */
	public String getBatteryType() {
		return batteryType;
	}
	
	
	
	//DIMENSION
	/**
     * Retrieves the value of the property width.
     *
     * @return     A code String value.
     *             The width of Product.
     */
	public String getWidth() {
		return width;
	}
	/**
     * Retrieves the value of the property height.
     *
     * @return     A code String value.
     *             The height of Product.
     */
	public String getHeight() {
		return height;
	}
	/**
     * Retrieves the value of the property depth.
     *
     * @return     A code String value.
     *             The depth of Product.
     */
	public String getDepth() {
		return depth;
	}
	/**
     * Retrieves the value of the property weight.
     *
     * @return     A code String value.
     *             The weight of Product.
     */
	public String getWeight() {
		return weight;
	}
	
	
	
	//WARRANTY
	
	/**
     * Retrieves the value of the property warranty.
     *
     * @return     A code String value.
     *             The warranty of Product.
     */
	public String getWarranty() {
		return warranty;
	}
	
	
//SETTER/MUTATOR METHODS
	
	//PRODUCT_INFORMATION
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public void setSDesc(String sdesc) {
		this.sdesc = sdesc;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public void setImage4(String image4) {
		this.image4 = image4;
	}
	public void setImage5(String image5) {
		this.image5 = image5;
	}
	public void setVendorId(int vendorId) {
		this.vendorId = vendorId;
	}
	
	//PRODUCT_DESCRIPTION
	public void setDESC1(String desc1) {
		this.desc1 = desc1;
	}
	public void setDContent1(String dContent1) {
		this.dContent1 = dContent1;
	}
	public void setDESC2(String desc2) {
		this.desc2 = desc2;
	}
	public void setDContent2(String dContent2) {
		this.dContent2 = dContent2;
	}
	public void setDESC3(String desc3) {
		this.desc3 = desc3;
	}
	public void setDContent3(String dContent3) {
		this.dContent3 = dContent3;
	}
	public void setDESC4(String desc4) {
		this.desc4 = desc4;
	}
	public void setDContent4(String dContent4) {
		this.dContent4 = dContent4;
	}
	public void setDESC5(String desc5) {
		this.desc5 = desc5;
	}
	public void setDContent5(String dContent5) {
		this.dContent5 = dContent5;
	}
	public void setDESC6(String desc6) {
		this.desc6 = desc6;
	}
	public void setDContent6(String dContent6) {
		this.dContent6 = dContent6;
	}
	public void setDESC7(String desc7) {
		this.desc7 = desc7;
	}
	public void setDContent7(String dContent7) {
		this.dContent7 = dContent7;
	}
	public void setDESC8(String desc8) {
		this.desc8 = desc8;
	}
	public void setDContent8(String dContent8) {
		this.dContent8 = dContent8;
	}
	public void setDESC9(String desc9) {
		this.desc9 = desc9;
	}
	public void setDContent9(String dContent9) {
		this.dContent9 = dContent9;
	}
	public void setDESC10(String desc10) {
		this.desc10 = desc10;
	}
	public void setDContent10(String dContent10) {
		this.dContent10 = dContent10;
	}
	
	//GENERAL
	public void setInBox(String inBox) {
		this.inBox = inBox;
	}
	public void setModelNo(String modelNo) {
		this.modelNo = modelNo;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public void setBrowseType(String browseType) {
		this.browseType = browseType;
	}
	public void setSimType(String simType) {
		this.simType = simType;
	}
	public void setTouchScreen(String touchScreen) {
		this.touchScreen = touchScreen;
	}
	
	//DISPLAY
	public void setDisplaySize(String displaySize) {
		this.displaySize = displaySize;
	}
	public void setResolution(String resolution) {
		this.resolution = resolution;
	}
	public void setResolutionType(String resolutionType) {
		this.resolutionType = resolutionType;
	}
	public void setDisplayType(String displayType) {
		this.displayType = displayType;
	}
	public void setDisplayColor(String displayColor) {
		this.displayColor = displayColor;
	}
	
	//OS_AND_PROCESSOR
	public void setOS(String os) {
		this.os = os;
	}
	public void setProcessorType(String processorType) {
		this.processorType = processorType;
	}
	public void setProcessorCore(String processorCore) {
		this.processorCore = processorCore;
	}
	public void setPrimaryClock(String primaryClock) {
		this.primaryClock = primaryClock;
	}
	public void setSecondaryClock(String secondaryClock) {
		this.secondaryClock = secondaryClock;
	}
	public void setOperatingFrequency(String operatingFrequency) {
		this.operatingFrequency = operatingFrequency;
	}
	
	//MEMORY_AND_STORAGE
	public void setInternalStorage(String internalStorage) {
		this.internalStorage = internalStorage;
	}
	public void setRAM(String ram) {
		this.ram = ram;
	}
	public void setExternalStorage(String externalStorage) {
		this.externalStorage = externalStorage;
	}
	public void setMemoryCard(String memoryCard) {
		this.memoryCard = memoryCard;
	}
	public void setCallLog(String callLog) {
		this.callLog = callLog;
	}
	
	//CAMERA
	public void setIsPrimaryCamera(String isPCamera) {
		this.isPCamera = isPCamera;
	}
	public void setPrimaryCamera(String primaryCamera) {
		this.primaryCamera = primaryCamera;
	}
	public void setPrimaryCameraFeature(String pCameraFeature) {
		this.pCameraFeature = pCameraFeature;
	}
	public void setIsSecondaryCamera(String isSCamera) {
		this.isSCamera = isSCamera;
	}
	public void setSecondaryCamera(String secondaryCamera) {
		this.secondaryCamera = secondaryCamera;
	}
	public void setSecondaryCameraFeature(String sCameraFeature) {
		this.sCameraFeature = sCameraFeature;
	}
	public void setFlash(String flash) {
		this.flash = flash;
	}
	public void setHDRecording(String HDrecording) {
		this.HDrecording = HDrecording;
	}
	public void setFullHDRecording(String FHDrecording) {
		this.FHDrecording = FHDrecording;
	}
	public void setVideoRecording(String videoRecording) {
		this.videoRecording = videoRecording;
	}
	public void setVideoRecordingResolution(String vRecordingResolution) {
		this.vRecordingResolution = vRecordingResolution;
	}
	public void setFrameRate(String frameRate) {
		this.frameRate = frameRate;
	}
	
	//CALL_FEATURE
	public void setPhoneBook(String phoneBook) {
		this.phoneBook = phoneBook;
	}
	
	//CONNECTIVITY
	public void setNetworkType(String networkType) {
		this.networkType = networkType;
	}
	public void setSupportNetwork(String supportNetwork) {
		this.supportNetwork = supportNetwork;
	}
	public void setInternetConnectivity(String internetConnectivity) {
		this.internetConnectivity = internetConnectivity;
	}
	public void setThreeG(String threeG) {
		this.threeG = threeG;
	}
	public void setGPRS(String gprs) {
		this.gprs = gprs;
	}
	public void setPreInstalledBrowser(String pBrowser) {
		this.pBrowser = pBrowser;
	}
	public void setBluetoothSupport(String bluetoothSupport) {
		this.bluetoothSupport = bluetoothSupport;
	}
	public void setBluetoothVersion(String bluetoothVersion) {
		this.bluetoothVersion = bluetoothVersion;
	}
	public void setWiFi(String wifi) {
		this.wifi = wifi;
	}
	public void setWiFiVersion(String wifiVersion) {
		this.wifiVersion = wifiVersion;
	}
	public void setNFC(String nfc) {
		this.nfc = nfc;
	}
	public void setUSB(String usb) {
		this.usb = usb;
	}
	public void setAudio(String audio) {
		this.audio = audio;
	}
	
	//OTHER_DETAILS
	public void setSmartPhone(String smartPhone) {
		this.smartPhone = smartPhone;
	}
	public void setSimSize(String simSize) {
		this.simSize = simSize;
	}
	public void setRemovableBattery(String removableBattery) {
		this.removableBattery = removableBattery;
	}
	public void setSMS(String sms) {
		this.sms = sms;
	}
	public void setSensors(String sensors) {
		this.sensors = sensors;
	}
	public void setOtherFeatures(String otherFeatures) {
		this.otherFeatures = otherFeatures;
	}
	public void setInstalledApps(String installedApps) {
		this.installedApps = installedApps;
	}
	
	//MULTIMEDIA
	public void setAudioFormat(String audioFormat) {
		this.audioFormat = audioFormat;
	}
	public void setVideoFormat(String videoFormat) {
		this.videoFormat = videoFormat;
	}
	
	//BATTERY
	public void setBatteryCapacity(String batteryCapacity) {
		this.batteryCapacity = batteryCapacity;
	}
	public void setBatteryType(String batteryType) {
		this.batteryType = batteryType;
	}
	
	//DIMENSION
	public void setWidth(String width) {
		this.width = width;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public void setDepth(String depth) {
		this.depth = depth;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	
	//WARRANTY
	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}
}
