package com.pzzapp.domain;

public class Product {
	private String productCode;
	private String productName;
	private String productDescription;

	public Product() {

	}

	public Product(String productCode, String productName,
			String productDescription) {
		this.productCode = productCode;
		this.productName = productName;
		this.productDescription = productDescription;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

}
