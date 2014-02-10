package com.pzzapp.services;

import java.util.List;

import com.pzzapp.domain.Price;
import com.pzzapp.domain.Product;

public interface ProductService {
	public void insertPriceData(Price price);
	public List<Product> getProductList();
	public void addProduct(Product product);
	public Product getProductByCode(String code);
	public List<Price> getPriceListByCode(String code);
	public List<String> getCodeList();

}
