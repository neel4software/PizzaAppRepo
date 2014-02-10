package com.pzzapp.logic;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.pzzapp.domain.Price;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:/spring-config.xml")
public class LogicTest {

	List<Price> priceList = null;

	@Autowired
	@Qualifier("logic1")
	Logic logicA;

	@Autowired
	@Qualifier("logic2")
	Logic logicB;

	@Before
	public void setupData() {
		priceList = new ArrayList<Price>();
		priceList.add(new Price(345.6));
		priceList.add(new Price(325.0));
		priceList.add(new Price(445.3));
		priceList.add(new Price(145.6));
		priceList.add(new Price(200.0));
		priceList.add(new Price(134.0));
		priceList.add(new Price(123.0));

		Collections.sort(priceList);

	}

	@Test
	public void testIdealPriceByLogicA() {
		assertEquals(268.24, logicA.getIdealPrice(priceList), 2);
	}
	
	@Test
	public void testIdealPriceByLogicB() {
		assertEquals(256.82, logicB.getIdealPrice(priceList), 2);
	}

}
