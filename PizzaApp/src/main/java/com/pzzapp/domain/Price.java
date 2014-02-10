package com.pzzapp.domain;

public class Price implements Comparable<Price> {
	private String productCode;
	private Double price;
	private String storeName;
	private String notes;

	public Price() {
	}

	public Price(Double price) {
		this.price = price;
	}

	public Price(String productcCode, Double price, String storeName,
			String notes) {
		this.productCode = productcCode;
		this.price = price;
		this.storeName = storeName;
		this.notes = notes;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	@Override
	public int compareTo(Price priceObj) {
		return price.compareTo(priceObj.price);
	}
}
