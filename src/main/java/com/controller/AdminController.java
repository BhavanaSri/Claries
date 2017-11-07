
package com.controller;
import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.CategoryDAO;
import com.spring.dao.CategoryDAOImpl;
import com.spring.dao.ProductDAO;
import com.spring.dao.ProductDAOImpl;
import com.spring.dao.SupplierDAO;
import com.spring.dao.SupplierDAOImpl;
import com.spring.dao.UserDAO;
import com.spring.model.User;

@Controller

public class AdminController {
	
		 static Logger logger = LoggerFactory.getLogger(AdminController.class);



			@Autowired
			ProductDAO productDAO;
			
			@Autowired
			CategoryDAO categoryDAO;
			
			   @Autowired
			    SupplierDAO supplierDAO;
			
			
			@Autowired
			private UserDAO userDAO;
			

	    @RequestMapping(value="/",  method=RequestMethod.GET)
	    public String homePage(HttpSession session,Model m)
	    {
	    	session.setAttribute("plist",productDAO.retrieveProduct());
	    	
	       return "welcome";
	    }
		
	    @RequestMapping("/login")
	    public String login(@RequestParam(value="error",required=false) String error,
	    		@RequestParam(value="logout",required=false) String logout,
	    		Model model){
	    	if(error!=null)
	    		model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
	    	if(logout!=null)
	    		model.addAttribute("logout","Loggedout successfully");
	    		model.addAttribute("LoginPageClicked", true);
	    	return "Login";
	    	
	    }
	    
	    
	    
	    
	    
	    @SuppressWarnings("unchecked")
		@RequestMapping(value = "/login_session_attributes")
		public String login_session_attributes(HttpSession session,Model model) {
			String email = SecurityContextHolder.getContext().getAuthentication().getName();
			
			User user = userDAO.get(email);
			session.setAttribute("userid", user.getId());
			session.setAttribute("name", user.getEmail());
			session.setAttribute("LoggedIn", "true");
			System.out.println(session.getAttribute("userid"));
			Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
			.getAuthentication().getAuthorities();
			String role="ROLE_USER";
			for (GrantedAuthority authority : authorities) 
			{
			    session.setAttribute("user", user);
			     if (authority.getAuthority().equals(role)) 
			     {
			    	 session.setAttribute("UserLoggedIn", "true");
			    	//session.setAttribute("cartsize",cartDAO.cartsize((Integer)session.getAttribute("userid")));
			    	 return "redirect:/";
			     }
			     else 
			     {
			    	 session.setAttribute("Administrator", "true");
			    	 model.addAttribute("ProductPageClicked", "true");
			    	 model.addAttribute("supplierList",supplierDAO.retrieveSupplier());
			    	 model.addAttribute("categoryList",categoryDAO.retrieveCategory());
				 return "/admin";
			     }
		}
			
			return "/welcome";
		
		}
	    
	    	}

