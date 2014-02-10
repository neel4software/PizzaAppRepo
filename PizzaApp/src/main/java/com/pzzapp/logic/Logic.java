package com.pzzapp.logic;

import java.util.List;

import com.pzzapp.domain.Price;

public interface Logic {
	public double getIdealPrice(List<Price> priceList);
}
