package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.dao.CategoryDAO;
import com.spring.dao.ProductDAO;
import com.spring.dao.SupplierDAO;
import com.spring.dao.UserDAO;
import com.spring.model.Product;
import com.spring.model.User;


@Controller
public class IndexController 
{
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	   @Autowired
	    SupplierDAO supplierDAO;
	
	
	@Autowired
	private UserDAO userDAO;
	
		@RequestMapping("/registration")
		public String goToRegisterPage(@ModelAttribute("user") User user,Model model)
		{
			
			model.addAttribute("user",new User());
			
			return "register";
		}


		@RequestMapping(value = "/myImage/imageDisplay", method = RequestMethod.GET)
		  public void showImage(@RequestParam("id") int id, HttpServletResponse response,HttpServletRequest request) 
				  throws ServletException, IOException{
			
			System.out.println(id);
			Product item = productDAO.getItem(id);
			System.out.println(id);
			response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
			
			//String yourBase64EncodedBytesString = new String(Base64.encodeBase64(content));
			//System.out.println(new String(item.getItemImage()));
			
			response.getOutputStream().write(item.getImage());
			
			System.out.println("Image is");
		
			response.getOutputStream().close();
			/*
			byte[] encoded=Base64.encodeBase64(item.getItemImage());
			String encodedString = new String(encoded);
			request.setAttribute("image", encodedString);
			ModelMap map = new ModelMap();
			map.put("image", encodedString);
			*/
		
		}
		
		
		

		@RequestMapping("/saveUser")
		public String createUser(@ModelAttribute("user") User user)
		{
		 
			user.setRole("ROLE_USER");
			user.setEnabled(true);
			userDAO.saveUser(user);
			return "welcome";
		}


	}