package com.mv.springmvc.services;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import com.mv.springmvc.dao.BookingDao;
import com.mv.springmvc.dao.CheckAvailablityDao;
import com.mv.springmvc.dao.RegisterDao;
import com.mv.springmvc.entity.Book;
import com.mv.springmvc.entity.CheckAvailblity;
import com.mv.springmvc.entity.Register;

public class CheckAvailablityService {
	/*Name: Mukund Vyavahare
	Date:17-10-2020
	Title: Service class*/
	
	@Autowired
	private CheckAvailablityDao checkavailableDao;
	
	@Autowired
	private BookingDao bookingDao;
	
	@Autowired
	private RegisterDao registerDao;
	//service for save date
	public void saveDataService(CheckAvailblity check){
		checkavailableDao.saveData(check);
	}
	//service for register data
	public void saveRegisterData(Register register){
		registerDao.registerData(register);
	}
	//service for login 
	public int checkLogin(Register register){
		return registerDao.loginData(register);
	}
	
	//service for booking
	public int saveBookingDetails(Book book) throws IOException{
		return bookingDao.saveBookingDetails(book);
	}
}
