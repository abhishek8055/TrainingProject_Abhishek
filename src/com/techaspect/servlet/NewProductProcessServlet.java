package com.techaspect.servlet;

import java.io.IOException;
import java.util.*;
import java.io.FileNotFoundException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


import com.techaspect.dao.ProductDescriptionDao;
import com.techaspect.dao.ProductInformationDao;
import com.techaspect.dao.ProductSpecificationDao;
import com.techaspect.entity.Product;

public class NewProductProcessServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//PRODUCT_INFORMATION DATA	
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String sdesc = request.getParameter("sdesc");
		String quantity = request.getParameter("quantity");
		
		
		//String category = request.getParameter("category");
		//String subCategory = request.getParameter("subCategory");
		
		Part img1 = request.getPart("image1");
		Part img2 = request.getPart("image2");
		Part img3 = request.getPart("image3");
		Part img4 = request.getPart("image4");
		Part img5 = request.getPart("image5");
		
		
//PRODUCT_DESCRIPTION DATA
		String desc1 = request.getParameter("desc1");
		String dContent1 = request.getParameter("dContent1");
		String desc2 = request.getParameter("desc2");
		String dContent2 = request.getParameter("dContent2");
		String desc3 = request.getParameter("desc3");
		String dContent3 = request.getParameter("dContent3");
		String desc4 = request.getParameter("desc4");
		String dContent4 = request.getParameter("dContent4");
		String desc5 = request.getParameter("desc5");
		String dContent5 = request.getParameter("dContent5");
		String desc6 = request.getParameter("desc6");
		String dContent6 = request.getParameter("dContent6");
		String desc7 = request.getParameter("desc7");
		String dContent7 = request.getParameter("dContent7");
		String desc8 = request.getParameter("desc8");
		String dContent8 = request.getParameter("dContent8");
		String desc9 = request.getParameter("desc9");
		String dContent9 = request.getParameter("dContent9");
		String desc10 = request.getParameter("desc10");
		String dContent10 = request.getParameter("dContent10");
		
		
		
//PRODUCT_SPECIFICATION DATA
		
		//GENERAL_INFORMATION
		String inBox = request.getParameter("inBox");
		String modelNo = request.getParameter("modelNo");
		String modelName = request.getParameter("modelName");
		String color = request.getParameter("color");
		String browseType = request.getParameter("browsetype");
		String simType = request.getParameter("simType");
		String touchScreen = request.getParameter("touchScreen");
		
		//DISPLAY_FEATURES
		String displaySize = request.getParameter("displaySize");
		String resolution = request.getParameter("resolution");
		String resolutionType = request.getParameter("resolutionType");
		String displayType = request.getParameter("displayType");
		String displayColor = request.getParameter("displayColor");
		
		//OS_AND_PROCESSOR_FEATURES
		String os = request.getParameter("os");
		String processorType = request.getParameter("processorType");
		String processorCore = request.getParameter("processorCore");
		String pClock = request.getParameter("pClock");
		String sClock = request.getParameter("sClock");
		String operatingFreq = request.getParameter("operatingFreq");
		
		//MEMORY_AND_STORAGE_FEATURES
		String iStorage = request.getParameter("iStorage");
		String ram = request.getParameter("ram");
		String eStorage = request.getParameter("eStorage");
		String memoryCard = request.getParameter("memoryCard");
		String cLog = request.getParameter("cLog");
		
		//CAMERA_FEATURES
		String isPCamera = request.getParameter("isPCamera");
		String pCamera = request.getParameter("pCamera");
		String pCameraFeature = request.getParameter("pCameraFeature");
		String isSCamera = request.getParameter("isSCamera");
		String sCamera = request.getParameter("sCamera");
		String sCameraFeature = request.getParameter("sCameraFeature");
		String flash = request.getParameter("flash");
		String HDrecording = request.getParameter("HDrecording");
		String FHDrecording = request.getParameter("FHDrecording");
		String vRecording = request.getParameter("vRecording");
		String vRecordingResolution = request.getParameter("vRecordingResolution");
		String frameRate = request.getParameter("frameRate");
		
		//CALL_FEATURES
		String phonebook = request.getParameter("phonebook");
		
		//CONNECTIVITY_FEATURES
		String nType = request.getParameter("nType");
		String sNet = request.getParameter("sNet");
		String iCon = request.getParameter("iCon");
		String threeG = request.getParameter("threeG");
		String gprs = request.getParameter("gprs");
		String pBrowser = request.getParameter("pBrowser");
		String bSupport = request.getParameter("bSupport");
		String bVersion = request.getParameter("bVersion");
		String wifi = request.getParameter("wifi");
		String wifiVersion = request.getParameter("wifiVersion");
		String nfc = request.getParameter("nfc");
		String usb = request.getParameter("usb");
		String audio = request.getParameter("audio");
		
		//OTHER_DETAILS
		String sPhone = request.getParameter("sPhone");
		String simSize = request.getParameter("simSize");
		String removableB = request.getParameter("removableB");
		String sms = request.getParameter("sms");
		String sensor = request.getParameter("sensor");
		String otherF = request.getParameter("otherF");
		String iApps = request.getParameter("iApps");
		
		//MULTIMEDIA_FEATURES
		String audioFormat = request.getParameter("audioFormat");
		String vidoeFormat = request.getParameter("vidoeFormat");
		
		//BATTERY_AND_POWER_FEATURES
		String bCapacity = request.getParameter("bCapacity");
		String bType = request.getParameter("bType");
		
		//DIMENSION
		String width = request.getParameter("width");
		String height = request.getParameter("height");
		String depth = request.getParameter("depth");
		String weight = request.getParameter("weight");
		
		//WARRANTY_FEATURE
		String warranty = request.getParameter("warranty");
		
		
		//IMAGE_UPLOAD_PART
		String fileName[] = new String[5];
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
								
				    for (String content : part.getHeader("content-disposition").split(";")) {
				        if (content.trim().startsWith("filename")) {
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
		
		HttpSession session = request.getSession();
		int vid = (int)session.getAttribute("VENDORID");
		
		Product tempProduct = new Product();
			tempProduct.setVendorId(vid);
			tempProduct.setName(name);
			tempProduct.setPrice(price);
			tempProduct.setQuantity(quantity);
			tempProduct.setSDesc(sdesc);
			tempProduct.setImage1(fileName[0]);
			tempProduct.setImage2(fileName[1]);
			tempProduct.setImage3(fileName[2]);
			tempProduct.setImage4(fileName[3]);
			tempProduct.setImage5(fileName[4]);
			
			
			tempProduct.setDESC1(desc1);
			tempProduct.setDContent1(dContent1);
			tempProduct.setDESC2(desc2);
			tempProduct.setDContent2(dContent2);
			tempProduct.setDESC3(desc3);
			tempProduct.setDContent3(dContent3);
			tempProduct.setDESC4(desc4);
			tempProduct.setDContent4(dContent4);
			tempProduct.setDESC5(desc5);
			tempProduct.setDContent5(dContent5);
			tempProduct.setDESC6(desc6);
			tempProduct.setDContent6(dContent6);
			tempProduct.setDESC7(desc7);
			tempProduct.setDContent7(dContent7);
			tempProduct.setDESC8(desc8);
			tempProduct.setDContent8(dContent8);
			tempProduct.setDESC9(desc9);
			tempProduct.setDContent9(dContent9);
			tempProduct.setDESC10(desc10);
			tempProduct.setDContent10(dContent10);
			
			
			tempProduct.setInBox(inBox);
			tempProduct.setModelNo(modelNo);
			tempProduct.setModelName(modelName);
			tempProduct.setColor(color);
			tempProduct.setBrowseType(browseType);
			tempProduct.setSimType(simType);
			tempProduct.setTouchScreen(touchScreen);
			tempProduct.setDisplaySize(displaySize);
			tempProduct.setResolution(resolution);
			tempProduct.setResolutionType(resolutionType);
			tempProduct.setDisplayType(displayType);
			tempProduct.setDisplayColor(displayColor);
			tempProduct.setOS(os);
			tempProduct.setProcessorType(processorType);
			tempProduct.setProcessorCore(processorCore);
			tempProduct.setPrimaryClock(pClock);
			tempProduct.setSecondaryClock(sClock);
			tempProduct.setOperatingFrequency(operatingFreq);
			tempProduct.setInternalStorage(iStorage);
			tempProduct.setRAM(ram);
			tempProduct.setExternalStorage(eStorage);
			tempProduct.setMemoryCard(memoryCard);
			tempProduct.setCallLog(cLog);
			tempProduct.setIsPrimaryCamera(isPCamera);
			tempProduct.setPrimaryCamera(pCamera);
			tempProduct.setPrimaryCameraFeature(pCameraFeature);
			tempProduct.setIsSecondaryCamera(isSCamera);
			tempProduct.setSecondaryCamera(sCamera);
			tempProduct.setSecondaryCameraFeature(sCameraFeature);
			tempProduct.setFlash(flash);
			tempProduct.setHDRecording(HDrecording);
			tempProduct.setFullHDRecording(FHDrecording);
			tempProduct.setVideoRecording(vRecording);
			tempProduct.setVideoRecordingResolution(vRecordingResolution);
			tempProduct.setFrameRate(frameRate);
			tempProduct.setPhoneBook(phonebook);
			tempProduct.setNetworkType(nType);
			tempProduct.setSupportNetwork(sNet);
			tempProduct.setInternetConnectivity(iCon);
			tempProduct.setThreeG(threeG);
			tempProduct.setGPRS(gprs);
			tempProduct.setPreInstalledBrowser(pBrowser);
			tempProduct.setBluetoothSupport(bSupport);
			tempProduct.setBluetoothVersion(bVersion);
			tempProduct.setWiFi(wifi);
			tempProduct.setWiFiVersion(wifiVersion);
			tempProduct.setNFC(nfc);
			tempProduct.setUSB(usb);
			tempProduct.setAudio(audio);
			tempProduct.setSmartPhone(sPhone);
			tempProduct.setSimSize(simSize);
			tempProduct.setRemovableBattery(removableB);
			tempProduct.setSMS(sms);
			tempProduct.setSensors(sensor);
			tempProduct.setOtherFeatures(otherF);
			tempProduct.setInstalledApps(iApps);
			tempProduct.setAudioFormat(audioFormat);
			tempProduct.setVideoFormat(vidoeFormat);
			tempProduct.setBatteryCapacity(bCapacity);
			tempProduct.setBatteryType(bType);
			tempProduct.setWidth(width);
			tempProduct.setHeight(height);
			tempProduct.setDepth(depth);
			tempProduct.setWeight(weight);
			tempProduct.setWarranty(warranty);
		
		ProductInformationDao productInformationDao = ProductInformationDao.getInstance();
			boolean status1 = productInformationDao.addProductInformation(tempProduct);
			
		ProductDescriptionDao productDescriptionDao = ProductDescriptionDao.getInstance();
			boolean status2 = productDescriptionDao.addProductDescription(tempProduct);
			
		ProductSpecificationDao productSpecificationDao = ProductSpecificationDao.getInstance();
			boolean status3 = productSpecificationDao.addProductSpecification(tempProduct);
			
			if(status1 && status2 && status3) {
				
				ServletContext sctx = getServletContext();
				@SuppressWarnings("unchecked")
				List<Product> productInfo = (List<Product>)sctx.getAttribute("PRODUCTINFO");
				productInfo.add(tempProduct);
				
				@SuppressWarnings("unchecked")
				List<Product> productDesc = (List<Product>)sctx.getAttribute("PRODUCTDESC");
				productDesc.add(tempProduct);
				
				@SuppressWarnings("unchecked")
				List<Product> productSpec = (List<Product>)sctx.getAttribute("PRODUCTSPEC");
				productSpec.add(tempProduct);
				
				RequestDispatcher rd = request.getRequestDispatcher("ProductList.jsp");
				rd.forward(request, response);
			}else {
				request.setAttribute("ADDSTATUS", "failed");	
				RequestDispatcher rd = request.getRequestDispatcher("NewProductForm.jsp");
				rd.forward(request, response);
			}	
			
	}
}
