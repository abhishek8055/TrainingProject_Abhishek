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
public class Customer implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//PROPERTIES
	/** The value is used for Integer storage representing Customer's ID. */
	private int id;
	/** The value is used for String storage representing Customer's First Name. */
	private String firstName;
	/** The value is used for String storage representing Customer's Last Name. */
	private String lastName;
	/** The value is used for String storage representing Customer's  DOB. */
	private String dateOfBirth;
	/** The value is used for String storage representing Customer's Email. */
	private String email;
	/** The value is used for String storage representing Customer's Gender. */
	private String gender;
	/** The value is used for String storage representing Customer's Password. */
	private String password;
	/** The value is used for String storage representing Customer's Contact. */
	private String contact;
	/** The value is used for String storage representing Customer's Profile Picture. */
	private String profilePicture;
	
	/**
     * Initializes a newly created Customer object so that it represents
     * an empty Customer.
     */
	public Customer() {
	}
	
	/**
     * Initializes a newly created Customer object so that it represents
     * a Customer with attributes.
     *
     * @param  id
     *         The Customer ID.
     *         
     * @param  firstName
     *         The First Name of the Customer.
     *         
     * @param  lastName
     *         The Last Name of the Customer.
     *         
     * @param  dateOfBirth
     *         The Date of Birth of the Customer.
     *         
     * @param  email
     *         The Email Address of the Customer.
     *         
     * @param  password
     *         The Login Password of the Customer.
     *         
     * @param  profilePicture
     *         The Profile Picture Name of the Customer.
     */
	public Customer(int id, String firstName, String lastName, String dateOfBirth, String email, String password, String contact, String gender, String profilePicture) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.gender = gender;
		this.password = password;
		this.contact = contact;
		this.profilePicture = profilePicture;
	}
	public Customer(String firstName, String lastName, String dateOfBirth, String email, String gender, String password, String contact, String profilePicture) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.gender = gender;
		this.password = password;
		this.contact = contact;
		this.profilePicture = profilePicture;
	}
	
	//GETTER/ACCESSOR METHODS
	
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code integer value.
     *             The ID of Customer.
     */
	public int getId() {
		return id;
	}
	/**
     * Retrieves the value of the property firstName.
     *
     * @return     A code String value.
     *             The ID of Customer.
     */
	public String getFirstName() {
		return firstName;
	}
	/**
     * Retrieves the value of the property lastName.
     *
     * @return     A code String value.
     *             The ID of Customer.
     */
	public String getLastName() {
		return lastName;
	}
	/**
     * Retrieves the value of the property dateOfBirth.
     *
     * @return     A code String value.
     *             The ID of Customer.
     */
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	/**
     * Retrieves the value of the property email.
     *
     * @return     A code String value.
     *             The ID of Customer.
     */
	public String getEmail() {
		return email;
	}
	/**
     * Retrieves the value of the property gender.
     *
     * @return     A code String value.
     *             The ID of Customer.
     */
	public String getGender() {
		return gender;
	}
	/**
     * Retrieves the value of the property password.
     *
     * @return     A code String value.
     *             The ID of Customer.
     */
	public String getPassword() {
		return password;
	}
	/**
     * Retrieves the value of the property contact.
     *
     * @return     A code String value.
     *             The ID of Customer.
     */
	public String getContact() {
		return contact;
	}
	/**
     * Retrieves the value of the property profilePicture.
     *
     * @return     A code String value.
     *             The ID of Customer.
     */
	public String getProfilePicture() {
		return profilePicture;
	}
	
	//SETTER/MUTATOR METHODS
	
	/**
     * Sets a value to the property id.
     *
     * @param      A integer value.
     *              The ID of Customer.
     */
	public void setId(int id) {
		this.id = id;
	}
	/**
     * Sets a value to the property firstName.
     *
     * @param      A string value.
     *              The firstName of Customer.
     */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
     * Sets a value to the property lastName.
     *
     * @param      A string value.
     *              The lastName of Customer.
     */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
     * Sets a value to the property dateOfBirth.
     *
     * @param      A string value.
     *              The ID of Customer.
     */
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	/**
     * Sets a value to the property email.
     *
     * @param      A string value.
     *              The ID of Customer.
     */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
     * Sets a value to the property gender.
     *
     * @param      A string value.
     *              The gender of Customer.
     */
	public void setGender(String gender) {
		this.gender = gender;
	}
	/**
     * Sets a value to the property password.
     *
     * @param      A string value.
     *              The password of Customer.
     */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
     * Sets a value to the property contact.
     *
     * @param      A string value.
     *              The contact of Customer.
     */
	public void setContact(String contact) {
		this.contact = contact;
	}
	/**
     * Sets a value to the property profilePicture.
     *
     * @param      A string value.
     *              The profilePicture of Customer.
     */
	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}
}