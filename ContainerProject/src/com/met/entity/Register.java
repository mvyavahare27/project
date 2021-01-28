package com.met.entity;

public class Register {
	
	private int custid;
	private String firstname;
	private String lastname;
	private String username;
	private String password;
	private int mobileno;
	private String address;
	private String country;
	private int pincode;
	
	
	public Register(int custid, String firstname, String lastname, String username, String password, int mobileno,
			String address, String country, int pincode) {
		this();
		this.custid = custid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.username = username;
		this.password = password;
		this.mobileno = mobileno;
		this.address = address;
		this.country = country;
		this.pincode = pincode;
	}

	public Register() {
		super();
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

	public int getMobileno() {
		return mobileno;
	}

	public void setMobileno(int mobileno) {
		this.mobileno = mobileno;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public String getCountry() {
		return country;
	}



	public void setCountry(String country) {
		this.country = country;
	}



	public int getPincode() {
		return pincode;
	}



	public void setPincode(int pincode) {
		this.pincode = pincode;
	}



	public int getCustid() {
		return custid;
	}

	public void setCustid(int custid) {
		this.custid = custid;
	}

	@Override
	public String toString() {
		return "Register [custid=" + custid + ", firstname=" + firstname + ", lastname=" + lastname + ", username="
				+ username + ", password=" + password + ", mobileno=" + mobileno + ", address=" + address + ", country="
				+ country + ", pincode=" + pincode + "]";
	}

	



	
	
	
	
	

}
