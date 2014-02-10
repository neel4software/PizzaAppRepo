package com.pzzapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pzzapp.dao.ProductDao;
import com.pzzapp.domain.Price;
import com.pzzapp.domain.Product;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;

	@Override
	public void insertPriceData(Price price) {
		productDao.insertPriceData(price);
	}

	@Override
	public List<Product> getProductList() {
		return productDao.getProductList();
	}

	@Override
	public void addProduct(Product product) {
		productDao.addProduct(product);

	}

	@Override
	public Product getProductByCode(String param) {
		return productDao.getProductByCode(param);
	}

	@Override
	public List<Price> getPriceListByCode(String code) {
		return productDao.getPriceListByCode(code);
	}

	@Override
	public List<String> getCodeList() {
		return productDao.getCodeList();
	}

}
