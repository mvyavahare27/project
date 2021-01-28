package com.met.entity;

import java.sql.Date;

public class Booking {
	
	private String firstname;
	private String lastname;
	private String address;
	private String username;
	private int mobileno;
	private Date pickup_date;
	private Date drop_date;
	
	private Booking() {
		super();
	}

	private Booking(String firstname, String lastname, String address, String username, int mobileno, Date pickup_date,
			Date drop_date) {
		this();
		this.firstname = firstname;
		this.lastname = lastname;
		this.address = address;
		this.username = username;
		this.mobileno = mobileno;
		this.pickup_date = pickup_date;
		this.drop_date = drop_date;
	}

	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getMobileno() {
		return mobileno;
	}
	public void setMobileno(int mobileno) {
		this.mobileno = mobileno;
	}
	public Date getPickup_date() {
		return pickup_date;
	}
	public void setPickup_date(Date pickup_date) {
		this.pickup_date = pickup_date;
	}
	public Date getDrop_date() {
		return drop_date;
	}
	public void setDrop_date(Date drop_date) {
		this.drop_date = drop_date;
	}
	@Override
	public String toString() {
		return "Booking [firstname=" + firstname + ", lastname=" + lastname + ", address=" + address + ", username="
				+ username + ", mobileno=" + mobileno + ", pickup_date=" + pickup_date + ", drop_date=" + drop_date
				+ "]";
	}
	
	
	
}
