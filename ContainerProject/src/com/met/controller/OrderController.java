package com.met.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.met.entity.Order;
import com.met.services.OrderServices;

@Controller
public class OrderController {
	
	@Autowired
	private OrderServices orderServices;

	@RequestMapping(value="/order",method=RequestMethod.GET)
	public ModelAndView orderDisplay(@ModelAttribute Order order) throws SQLException{
		
		ModelAndView modelAndView = new ModelAndView("/order");
		
		System.out.println(order);
		
		orderServices.orderService(order);
		
		//modelAndView.addObject("order",booking);
		
		modelAndView.setViewName("booking");
		
		return modelAndView;
		
		
	}
	
	
		
	
}
