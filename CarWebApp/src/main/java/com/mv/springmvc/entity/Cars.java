package com.mv.springmvc.entity;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;

@Repository
@Entity
@Table(name="showcarstbl")
public class Cars {
	@Id
	@GeneratedValue
	private int id;
	private String carname;
	private float rate;
	private int hours;
	@OneToOne
	@JoinColumn(name="id")
	private Book book;
	
	public Cars() {
		super();
	}

	
	public Cars(int id, String carname, float rate, int hours, Book book) {
		super();
		this.id = id;
		this.carname = carname;
		this.rate = rate;
		this.hours = hours;
		this.book = book;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCarname() {
		return carname;
	}

	public void setCarname(String carname) {
		this.carname = carname;
	}

	public float getRate() {
		return rate;
	}

	public void setRate(float rate) {
		this.rate = rate;
	}

	public int getHours() {
		return hours;
	}

	public void setHours(int hours) {
		this.hours = hours;
	}
	
	public Book getBook() {
		return book;
	}


	public void setBook(Book book) {
		this.book = book;
	}


	@Override
	public String toString() {
		return "Cars [id=" + id + ", carname=" + carname + ", rate=" + rate + ", hours=" + hours + ", book=" + book
				+ "]";
	}

	
}
