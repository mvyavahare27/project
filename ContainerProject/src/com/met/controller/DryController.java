package com.met.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DryController {

	@RequestMapping(value="/dry",method=RequestMethod.GET)
	public ModelAndView dryPage(){
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("dry");
		
		return modelAndView;
	}

}
