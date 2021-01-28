package com.met.controller;

import java.sql.SQLException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.met.entity.Register;
import com.met.services.RegisterLoginService;

@Controller
public class RegisterLoginController {
	
	@Autowired
	private RegisterLoginService registerservices;
	
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public ModelAndView insertData(@ModelAttribute Register register){
		
		System.out.println(register);
		ModelAndView modelAndView = new ModelAndView("register");
		
		modelAndView.addObject("register",register);

		//modelAndView.setViewName("register");
		
		return modelAndView;
		
		
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public ModelAndView insertRegister(@ModelAttribute Register register) throws SQLException{
		
		ModelAndView modelAndView = new ModelAndView();
		
		registerservices.registerServices(register);
		
		modelAndView.addObject("data", "successfully registered");
		
		//modelAndView.setViewName("register");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView displayLogin(@ModelAttribute Register register){
		
		ModelAndView modelAndView = new ModelAndView("login");
		
		System.out.println(modelAndView);
	
		modelAndView.addObject("login",register);
		
		return modelAndView;
		
		
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	 public ModelAndView executeLogin(@ModelAttribute Register  register , ModelMap modelMap , HttpSession session ,HttpServletRequest request, HttpServletResponse response) throws SQLException{
		 
		 ModelAndView modelAndView = null;
			
		 
		 boolean isValiduser = registerservices.isValidService(register.getUsername(),register.getPassword());
		 System.out.println(isValiduser);
		 try{
		 if(isValiduser)
		 {
			 System.out.println("userLogin");
			 
			// request.setAttribute("LoggedInUser", login.getUsername());
			 /*modelAndView.addObject("login",order);
			 */
			 modelAndView = new ModelAndView("order");
			 
			 session.setAttribute("username", register.getUsername());
			 
			 if(request.getParameter("username") != null){
				 
				 Cookie cookie = new Cookie("username", register.getUsername());
				 
				 System.out.println(cookie);
				 
				 response.addCookie(cookie);

			 
		 }
		 else
		 {
			 
			 modelAndView = new ModelAndView("login");
			 
			 modelAndView.addObject("login",register);
			 
			// request.setAttribute("message", "Invalid Login");
			 
		 }
		 
		 }
		} 
		 catch(Exception e){
			 
			 e.printStackTrace();
			 
			 
		 }
		 
		 return modelAndView;
		 
		
	 }

}
