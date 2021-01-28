package com.met.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.met.entity.Booking;
import com.met.services.BookingService;

@Controller
public class BookingController {
	
	@Autowired
	private BookingService bookingService;
	
	@RequestMapping(value="/booking",method=RequestMethod.GET)
	public ModelAndView displayBookingPage(@ModelAttribute Booking booking){
		
		ModelAndView modelAndView = new ModelAndView("booking");
		
		modelAndView.setViewName("booking");
		
		return modelAndView;
		
	}
	
	@RequestMapping(value="/booking",method=RequestMethod.POST)
	public ModelAndView insertBooking(@ModelAttribute Booking booking){
		
		ModelAndView modelAndView = new ModelAndView();
		
		bookingService.bookingService(booking);
		
		modelAndView.addObject("data", "success");
		
		return modelAndView;
		
	}
	

}
