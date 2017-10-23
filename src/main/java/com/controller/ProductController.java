package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.dao.CategoryDAO;
import com.spring.dao.ProductDAO;
import com.spring.dao.SupplierDAO;
import com.spring.model.Category;
import com.spring.model.Product;
import com.spring.model.Supplier;


@Controller
public class ProductController {

	@Autowired
	ProductDAO productDao;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;

	
	
	@RequestMapping(value="product",method=RequestMethod.GET)
	public String showProduct(Model m)
	{
		Product product=new Product();
		m.addAttribute(product);
		
		m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("supplierList",this.getSuppliers());
		
		return "Product";
	}
	
	public LinkedHashMap<Integer,String> getCategories()
	{
		List<Category> listCategories=categoryDAO.retrieveCategory();
		LinkedHashMap<Integer,String> categoriesList=new LinkedHashMap<Integer,String>();
		
		for(Category category:listCategories)
		{
			categoriesList.put(category.getCatId(),category.getCatName());
		}
		
		return categoriesList;
	}
	
	public LinkedHashMap<Integer,String> getSuppliers()
	{
		List<Supplier> listSuppliers=supplierDAO.retrieveSupplier();
		LinkedHashMap<Integer,String> suppliersList=new LinkedHashMap<Integer,String>();
		
		for(Supplier supplier:listSuppliers)
		{
			suppliersList.put(supplier.getSupId(),supplier.getSupName());
		}
		
		return suppliersList;
	}
	
	
	@RequestMapping(value="InsertProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile fileDetail,Model m)
	{
		
		productDao.addProductTest(product);
		
		String path="file:///D:/niit%20project/GreenAvenueFrontEnd/src/main/webapp/resources/images";
		
		String totalFileWithPath=path+String.valueOf(product.getProductId())+".jpg";
		
		File productImage=new File(totalFileWithPath);
		
		if(!fileDetail.isEmpty())
		{
			try
			{
				byte fileBuffer[]=fileDetail.getBytes();
				FileOutputStream fos=new FileOutputStream(productImage);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			}
			catch(Exception e)
			{
				m.addAttribute("error",e.getMessage());
			}
		}
		else
		{
			m.addAttribute("error","Problem in File Uploading");
		}
		
		Product product1=new Product();
		m.addAttribute(product1);
		
		return "Product";
	}
	
	
	@RequestMapping(value="userHome")
	public String showProducts(Model m)
	{
		List<Product> listProducts=productDao.retrieveProduct();
		m.addAttribute("productList",listProducts);
		
		return "UserHome";
	}
	
	@RequestMapping(value="productDesc/{productId}")
	public String showProductDesc(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDao.getProduct(productId);
		m.addAttribute("product",product);
		return "ProductDesc";
	}

}