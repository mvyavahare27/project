package com.met.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactAbout {


	@RequestMapping(value="/about",method=RequestMethod.GET)
	public ModelAndView aboutPage(){
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("about");
		
		return modelAndView;
	}
	
	
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public ModelAndView contactPage(){
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("contact");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/shipping",method=RequestMethod.GET)
	public ModelAndView shippingPage(){
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("shipping");
		
		return modelAndView;
	}
	
}
