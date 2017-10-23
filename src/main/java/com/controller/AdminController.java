
package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.CategoryDAOImpl;
import com.spring.dao.ProductDAOImpl;
import com.spring.dao.SupplierDAOImpl;
import com.spring.dao.UserDAO;
import com.spring.model.User;

@Controller
@RequestMapping("/admin")
public class AdminController {
@RequestMapping("/add")
public ModelAndView adding()
{
	ModelAndView mv=new ModelAndView();
	mv.setViewName("adding");
	return mv;
}
}

