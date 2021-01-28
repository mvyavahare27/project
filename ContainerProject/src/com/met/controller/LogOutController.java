package com.met.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogOutController {
        
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public ModelAndView logoutPage(){
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("logout");
		
		return modelAndView;
	}
	
	
}
