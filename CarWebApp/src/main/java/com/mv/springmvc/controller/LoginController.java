package com.mv.springmvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.jboss.logging.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.mv.springmvc.dao.BookingDao;
import com.mv.springmvc.dao.CheckAvailablityDao;
import com.mv.springmvc.entity.Book;
import com.mv.springmvc.entity.Cars;
import com.mv.springmvc.entity.Register;
import com.mv.springmvc.services.CheckAvailablityService;

@Controller
@RequestMapping("/")
@SessionAttributes("email")
public class LoginController {
	
	/*Name: Mukund Vyavahare
	Date:19-10-2020
	Title: Login and logout Controller*/
	@Autowired
	private CheckAvailablityService checkavailableService;
	
	@Autowired
	private MultipartResolver multipartResolver;
	
	@Autowired
	private BookingDao bookingDao;
	
	@Autowired
	private CheckAvailablityDao checkavailableDao;
	
	ModelAndView modelAndView =  new ModelAndView();
	
	//Controller for rendering login page
	@RequestMapping(value="loginpage",method=RequestMethod.GET)
	public ModelAndView displayPage(){
		modelAndView.setViewName("loginpage");
		return modelAndView;
	}
	//Controller for login credentials
	@RequestMapping(value="login",method=RequestMethod.POST)
	public ModelAndView userLogin(@ModelAttribute Register register,Model model){
		int size = checkavailableService.checkLogin(register);
		String username = register.getEmail();
		String result = username.substring(0, username.indexOf("@"));
		if(size > 0){
			//For session Attribute
			model.addAttribute("email",result);
			List<Cars> lst = new ArrayList<Cars>();
			lst = checkavailableDao.listOfCars();
			modelAndView.addObject("lists",lst);
			modelAndView.setViewName("display");
		}else{
			modelAndView.addObject("login_err","login failed");
		}
		return modelAndView;
	}
	//Controller for rendering on show page after successfully login
	@RequestMapping(value="show",method=RequestMethod.GET)
	public ModelAndView showPage(@RequestParam int id, String name,HttpSession session){
		String email = (String) session.getAttribute("email");		
		if(email == null)
		{
			modelAndView.addObject("msg", "Login first");
			modelAndView.setViewName("loginpage");
		}else{
		
			modelAndView.addObject("msg", "email");
			modelAndView.addObject("ID", id);
			modelAndView.addObject("name", name);
			modelAndView.setViewName("show");
		}
		return modelAndView; 
	}
	@RequestMapping(value="booking",method=RequestMethod.POST)
	public ModelAndView bookDetails(@RequestParam int carid,@RequestParam String carname,@RequestParam String city,@RequestParam String mobile,@RequestParam String address,@RequestParam("photo") MultipartFile photo) throws IOException{
		long size = photo.getSize();
		long x = 150144;
		if(size > x)
		{
			System.out.println("file size is greater than 150 kb");
			modelAndView.addObject("size_err", "Please upload less then 150 kb file");
			modelAndView.setViewName("show");
		}
		else
		{
			byte[] bin_data = photo.getBytes();
			Book book = new Book();
			book.setCarid(carid);
			book.setCity(city);
			book.setAddress(address);
			book.setMobile(mobile);
			book.setFile_name(photo.getOriginalFilename());
			book.setFile_data(bin_data);
			int num = checkavailableService.saveBookingDetails(book);
			System.out.println("returnsize: "+num);
			if(num > 0){
				modelAndView.addObject("carbookedmsg","Already booked");
				modelAndView.addObject("carbooked",carname);
				modelAndView.setViewName("display");
			}else{
				modelAndView.setViewName("payment");
			}
		}
		return modelAndView;
		
	}
	
	//Controller for logout and session close
	@RequestMapping(value="logout",method=RequestMethod.POST)
	public ModelAndView logout(SessionStatus status){
		status.setComplete();
		modelAndView.addObject("msg", "");
		modelAndView.setViewName("loginpage");
		return modelAndView;
	}
	
}
