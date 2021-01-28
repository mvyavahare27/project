package com.met.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ColdController {
	
	@RequestMapping(value="/cold",method=RequestMethod.GET)
	public ModelAndView coldPage(){
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("cold");
		
		return modelAndView;
	}

}
