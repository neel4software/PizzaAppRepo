package com.pzzapp.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pzzapp.domain.Price;
import com.pzzapp.domain.Product;
import com.pzzapp.logic.Logic;
import com.pzzapp.services.ProductService;

@Controller
public class ProductController {

	static final Logger logger = Logger.getLogger(ProductController.class);

	@Autowired
	private ProductService productService;

	Logic logic;

	ProductController(Logic logic) {
		this.logic = logic;
	}
	
	ProductController() {
	}


	@RequestMapping("/addPrice")
	public ModelAndView getInputForm(@ModelAttribute Price price) {
		List<String> codeList = productService.getCodeList();
		return new ModelAndView("addPriceDetails", "codeList", codeList);

	}

	@RequestMapping("/savePrice")
	public String insertPriceData(@ModelAttribute Price price) {
		productService.insertPriceData(price);
		return "redirect:productList.html";
	}

	@RequestMapping("/addProduct")
	public ModelAndView getProductInputForm(@ModelAttribute Product product) {

		return new ModelAndView("addProduct");

	}

	@RequestMapping("/saveProduct")
	public String insertProductData(@ModelAttribute Product product) {
		productService.addProduct(product);
		return "redirect:productList.html";
	}

	@RequestMapping("/productList")
	public ModelAndView getProductList() {
		List<Product> productList = productService.getProductList();
		logger.debug("productList" + productList);
		return new ModelAndView("productList", "productList", productList);
	}

	@RequestMapping("/getProduct")
	public ModelAndView getProductByCode(@RequestParam("code") String code) {
		List<Price> priceList = productService.getPriceListByCode(code);
		Product product = productService.getProductByCode(code);
		Collections.sort(priceList);
		double idealPrice = logic.getIdealPrice(priceList);
		double totalPrice = 0;
		for (Price price : priceList) {
			totalPrice += price.getPrice();
		}
		int priceCount = priceList.size();
		double averagePrice = totalPrice / priceCount;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("priceList", priceList);
		map.put("product", product);
		map.put("averagePrice", averagePrice);
		map.put("highestPrice", priceList.get(priceCount - 1).getPrice());
		map.put("lowestPrice", priceList.get(0).getPrice());
		map.put("priceCount", priceCount);

		map.put("idealPrice", idealPrice);
		return new ModelAndView("productDetails", "map", map);

	}

}
