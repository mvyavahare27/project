package com.mv.springmvc.entity;

import java.util.Arrays;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.type.TrueFalseType;


@Entity
@Table(name="bookcartbl")
public class Book {
	@Id
	@GeneratedValue
	private int id;
	@Column(name="carid",unique=true, nullable=false)
	private int carid;
	private String address;
	private String city;
	private String mobile;
	private String file_name;
	private byte[] file_data;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="id")
	private Cars cars;
	
	public Book(int id, int carid, String address, String city, String mobile, String file_name, byte[] file_data,
			Cars cars) {
		super();
		this.id = id;
		this.carid = carid;
		this.address = address;
		this.city = city;
		this.mobile = mobile;
		this.file_name = file_name;
		this.file_data = file_data;
		this.cars = cars;
	}

	public Book() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCarid() {
		return carid;
	}

	public void setCarid(int carid) {
		this.carid = carid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public byte[] getFile_data() {
		return file_data;
	}

	public void setFile_data(byte[] file_data) {
		this.file_data = file_data;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Cars getCars() {
		return cars;
	}

	public void setCars(Cars cars) {
		this.cars = cars;
	}
	
	/*@Override
	public String toString() {
		return "Book [id=" + id + ", carid=" + carid + ", address=" + address + ", mobile=" + mobile + ", file_name="
				+ file_name + ", file_data=" + Arrays.toString(file_data) + "]";
	}
*/
	

}
