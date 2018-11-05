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

import java.io.Serializable;

//ENTITY/BEAN/POJO CLASS
/**
 * The Customer class represents a Customer Record.
 * It includes properties for storing data and methods for
 * retrieving & setting values in the properties.
 * 
 * @author  Abhishek Dwivedi
 */
public class CustomerAddress implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//PROPERTIES
	/** The value is used for Integer storage representing Customer's Address ID. */
	private int id;
	/** The value is used for Integer storage representing Customer's Address. */
	private String address;
	/** The value is used for Integer storage representing Customer's City. */
	private String city;
	/** The value is used for Integer storage representing Customer's ZIP. */
	private String zip;
	/** The value is used for Integer storage representing Customer's State. */
	private String state;
	/** The value is used for Integer storage representing Customer's Country. */
	private String country;
	/** The value is used for Integer storage representing Customer's ID. */
	private int customerId;
	
	/**
     * Initializes a newly created Customer object so that it represents
     * an empty CustomerAddress.
     */
	public CustomerAddress() {
	}
	
	/**
     * Initializes a newly created CustomerAddress object so that it represents
     * a Customer with attributes.
     *
     * @param  id
     *         The CustomerAddress ID.
     *         
     * @param  address
     *         The address of the CustomerAddress.
     *         
     * @param  city
     *         The city of the CustomerAddress.
     *         
     * @param  zip
     *         The zip of the CustomerAddress.
     *         
     * @param  state
     *         The state of the CustomerAddress.
     *         
     * @param  country
     *         The country of the CustomerAddress.
     *         
     * @param  customer id
     *         The customer id of the CustomerAddress.
     */
	public CustomerAddress(int id, String address, String city, String zip, String state, String country, int customerId) {
		this.id = id;
		this.address = address;
		this.city = city;
		this.zip = zip;
		this.state = state;
		this.country = country;
		this.customerId = customerId;
	}
	public CustomerAddress(String address, String city, String zip, String state, String country, int customerId) {
		this.address = address;
		this.city = city;
		this.zip = zip;
		this.state = state;
		this.country = country;
		this.customerId = customerId;
	}
	
	//GETTER/ACCESSOR METHODS
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code integer value.
     *             The ID of CustomerAddress.
     */
	public int getId() {
		return id;
	}
	/**
     * Retrieves the value of the property address.
     *
     * @return     A code string value.
     *             The address of CustomerAddress.
     */
	public String getAddress() {
		return address;
	}
	/**
     * Retrieves the value of the property city.
     *
     * @return     A code string value.
     *             The city of CustomerAddress.
     */
	public String getCity() {
		return city;
	}
	/**
     * Retrieves the value of the property zip.
     *
     * @return     A code string value.
     *             The zip of CustomerAddress.
     */
	public String getZip() {
		return zip;
	}
	/**
     * Retrieves the value of the property state.
     *
     * @return     A code string value.
     *             The state of CustomerAddress.
     */
	public String getState() {
		return state;
	}
	/**
     * Retrieves the value of the property country.
     *
     * @return     A code string value.
     *             The country of CustomerAddress.
     */
	public String getCountry() {
		return country;
	}
	/**
     * Retrieves the value of the property customerId.
     *
     * @return     A code string value.
     *             The customerId of CustomerAddress.
     */
	public int getCustomerId() {
		return customerId;
	}
	
	//SETTER/MUTATOR METHODS
	
	/**
     * Sets a value to the property id.
     *
     * @param      A integer value.
     *              The ID of CustomerAddress.
     */
	public void setId(int id) {
		this.id = id;
	}
	/**
     * Sets a value to the property address.
     *
     * @param      A string value.
     *              The address of CustomerAddress.
     */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
     * Sets a value to the property city.
     *
     * @param      A string value.
     *              The city of CustomerAddress.
     */
	public void setCity(String city) {
		this.city = city;
	}
	/**
     * Sets a value to the property zip.
     *
     * @param      A string value.
     *              The zip of CustomerAddress.
     */
	public void setZip(String zip) {
		this.zip = zip;
	}
	/**
     * Sets a value to the property state.
     *
     * @param      A string value.
     *              The state of CustomerAddress.
     */
	public void setState(String state) {
		this.state = state;
	}
	/**
     * Sets a value to the property country.
     *
     * @param      A string value.
     *              The country of CustomerAddress.
     */
	public void setCountry(String country) {
		this.country = country;
	}
	/**
     * Sets a value to the property customerId.
     *
     * @param      A integer value.
     *              The customerId of CustomerAddress.
     */
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
	@Override
	public String toString() {
		return "CustomerAddress [id=" + id + ", address=" + address + ", city=" + city + ", zip=" + zip + ", state="
				+ state + ", country=" + country + ", customerId=" + customerId + "]";
	}
}