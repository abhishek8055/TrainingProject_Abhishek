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
/**
 * The Customer class represents a Customer Record.
 * It includes properties for storing data and methods for
 * retrieving & setting values in the properties.
 * 
 * @author  Abhishek Dwivedi
 */

public class Vendor implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/** The value is used for Integer storage representing Vendor's ID. */
	private int id;
	/** The value is used for String storage representing Vendor's FirstName. */
	private String firstName;
	/** The value is used for String storage representing Vendor's LastName. */
	private String lastName;
	/** The value is used for String storage representing Vendor's DOB. */
	private String dateOfBirth;
	/** The value is used for String storage representing Vendor's Email. */
	private String email;
	/** The value is used for String storage representing Vendor's Password. */
	private String password;
	/** The value is used for String storage representing Vendor's Contact. */
	private String contact;
	/** The value is used for String storage representing Vendor's ProfilePicture. */
	private String profilePicture;
	
	/**
     * Initializes a newly created Customer object so that it represents
     * an empty CustomerAddress.
     */
	public Vendor() {
	}
	
	/**
     * Initializes a newly created Vendor object so that it represents
     * a Vendor with attributes.
     *
     * @param  id
     *         The Vendor ID.
     *         
     * @param  firstName
     *         The firstName of the CustomerAddress.
     *         
     * @param  lastName
     *         The lastName of the CustomerAddress.
     *         
     * @param  DOB
     *         The DOB of the CustomerAddress.
     *         
     * @param  email
     *         The email of the CustomerAddress.
     *         
     * @param  password
     *         The password of the CustomerAddress.
     *         
     * @param  profilepic
     *         The profilePicture of the CustomerAddress.
     */
	public Vendor(int id, String firstName, String lastName, String dateOfBirth, String email, String password, String contact, String profilePicture) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.password = password;
		this.contact = contact;
		this.profilePicture = profilePicture;
	}
	public Vendor(String firstName, String lastName, String dateOfBirth, String email, String password, String contact, String profilePicture) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.password = password;
		this.contact = contact;
		this.profilePicture = profilePicture;
	}
	
	//GETTER/ACCESSOR METHODS
	/**
     * Retrieves the value of the property ID.
     *
     * @return     A code Integer value.
     *             The ID of Vendor.
     */
	public int getId() {
		return id;
	}
	/**
     * Retrieves the value of the property firstName.
     *
     * @return     A code string value.
     *             The firstName of Vendor.
     */
	public String getFirstName() {
		return firstName;
	}
	/**
     * Retrieves the value of the property lastName.
     *
     * @return     A code string value.
     *             The lastName of Vendor.
     */
	public String getLastName() {
		return lastName;
	}
	/**
     * Retrieves the value of the property dateOfBirth.
     *
     * @return     A code string value.
     *             The dateOfBirth of Vendor.
     */
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	/**
     * Retrieves the value of the property email.
     *
     * @return     A code string value.
     *             The email of Vendor.
     */
	public String getEmail() {
		return email;
	}
	/**
     * Retrieves the value of the property password.
     *
     * @return     A code string value.
     *             The password of Vendor.
     */
	public String getPassword() {
		return password;
	}
	/**
     * Retrieves the value of the property contact.
     *
     * @return     A code string value.
     *             The contact of Vendor.
     */
	public String getContact() {
		return contact;
	}
	/**
     * Retrieves the value of the property profilePicture.
     *
     * @return     A code string value.
     *             The profilePicture of Vendor.
     */
	public String getProfilePicture() {
		return profilePicture;
	}
	
	//SETTER/MUTATOR METHODS
	/**
     * Retrieves the value of the property id.
     *
     * @return     A code integer value.
     *             The ID of Vendor.
     */
	public void setId(int id) {
		this.id = id;
	}
	/**
     * Retrieves the value of the property firstName.
     *
     * @return     A code String value.
     *             The firstName of Vendor.
     */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
     * Retrieves the value of the property lastName.
     *
     * @return     A code String value.
     *             The lastName of Vendor.
     */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
     * Retrieves the value of the property dateOfBirth.
     *
     * @return     A code String value.
     *             The dateOfBirth of Vendor.
     */
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	/**
     * Retrieves the value of the property email.
     *
     * @return     A code String value.
     *             The email of Vendor.
     */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
     * Retrieves the value of the property password.
     *
     * @return     A code String value.
     *             The password of Vendor.
     */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
     * Retrieves the value of the property contact.
     *
     * @return     A code String value.
     *             The contact of Vendor.
     */
	public void setContact(String contact) {
		this.contact = contact;
	}
	/**
     * Retrieves the value of the property profilePicture.
     *
     * @return     A code String value.
     *             The profilePicture of Vendor.
     */
	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}
}
