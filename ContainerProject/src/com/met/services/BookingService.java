package com.met.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.met.dao.BookingDao;
import com.met.entity.Booking;

@Component
public class BookingService {
	
	@Autowired
	private BookingDao bookingDao;
	
	public void bookingService(Booking booking){
		
		bookingDao.insertBookingDetails(booking);
	}

}
