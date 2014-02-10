package com.pzzapp.logic;

import java.util.List;

import org.springframework.stereotype.Component;

import com.pzzapp.domain.Price;

@Component("logic1")
public class LogicA implements Logic {
	@Override
	public double getIdealPrice(List<Price> priceList) {
		double totalPrice = 0;
		double idealPrice = 0;
		int size = priceList.size();
		if (size > 4) {
			for (int i = 2; i < size - 2; i++) {
				totalPrice += priceList.get(i).getPrice();
				System.out.println(totalPrice+" "+size);
			}
			idealPrice = ((totalPrice / (size - 4))) * 1.2;
			System.out.println(idealPrice+" "+(totalPrice / (size - 4)));
		} else {
			for (int i = 0; i < size; i++) {
				totalPrice += priceList.get(i).getPrice();
			}
			idealPrice = totalPrice / size;
		}

		return idealPrice;
	}
}
