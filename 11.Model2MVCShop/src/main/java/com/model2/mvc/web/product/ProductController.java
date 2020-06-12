package com.model2.mvc.web.product;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.product.ProductService;



//==> ȸ������ Controller
@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	///Field
	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;
	//setter Method ���� ����
		
	public ProductController(){
		System.out.println(this.getClass());
	}
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml ���� �Ұ�
	//==> �Ʒ��� �ΰ��� �ּ��� Ǯ�� �ǹ̸� Ȯ�� �Ұ�
	//@Value("#{commonProperties['pageUnit']}")
	@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	//@Value("#{commonProperties['pageSize']}")
	@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
		
	@RequestMapping( value="addProduct")
	//public String addProduct( @ModelAttribute("product") Product product ) throws Exception {
	public String addProduct( @ModelAttribute("product") Product product) throws Exception{
		System.out.println("/product/addProduct : GET");
		//Business Logic
		product.setManuDate((product.getManuDate()).replace("-",""));
		productService.insertProduct(product);
		System.out.println("insertproduct : "+product);
		
		
		return "forward:/product/getProduct.jsp";
	}
	
	//@RequestMapping("/getProduct.do")
	@RequestMapping( value = "getProduct")
	public String getProduct( @RequestParam("prodNo") int prodNo , Model model ) throws Exception {
		
		System.out.println("/product/getProduct : POST");
		//Business Logic
		Product product = productService.findProduct(prodNo);
		// Model �� View ����
		model.addAttribute("product", product);
		
	
			return "forward:/product/getProduct.jsp";		
	}
	
	
	//@RequestMapping("/updateProductView.do")
	@RequestMapping( value = "updateProductView")
	public String updateProductView( @RequestParam("prodNo") int prodNo, Model model ) throws Exception{

		System.out.println("/product/updateProductView");
		System.out.println("prodNo : "+prodNo);
		//Business Logic
		Product product = productService.findProduct(prodNo);
		// Model �� View ����
		model.addAttribute("product", product);
		
		return "forward:/product/updateProduct.jsp";
	}
	
	@RequestMapping("/updateProduct")
	public String updateProduct( @ModelAttribute("product") Product product , Model model ) throws Exception{

		System.out.println("/updateProduct");
		//BusinessLogic
		productService.updateProduct(product);
		model.addAttribute("product", product);
		return "forward:/product/getProduct.jsp";
	}
	
	//@RequestMapping("/listProduct.do")
	@RequestMapping( value ="listProduct")
	public String listProduct( @ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{

		System.out.println("/product/listProduct : GET / POST");
		System.out.println("model : "+model);
		//BusinessLogic
		
		
		if(search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		System.out.println("1");
		System.out.println(search);
		System.out.println("2");
		// Business logic
		Map<String, Object> map=productService.getProductList(search);
		System.out.println("map : "+map);
		
		Page resultPage = new Page(search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		
		
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		return "forward:/product/listProduct.jsp";
	}
}