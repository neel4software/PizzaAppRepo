package com.pzzapp.repository;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;
import org.springframework.test.context.support.DirtiesContextTestExecutionListener;
import org.springframework.test.context.transaction.TransactionalTestExecutionListener;

import com.pzzapp.dao.ProductDao;
import com.pzzapp.domain.Price;
import com.pzzapp.domain.Product;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:/spring-config.xml")
@TestExecutionListeners({ DependencyInjectionTestExecutionListener.class,
		DirtiesContextTestExecutionListener.class,
		TransactionalTestExecutionListener.class })
public class ProductDaoTest {

	Product product = null;
	Price price = null;

	@Autowired
	ProductDao productDao;

	@Autowired
	DataSource dataSource;

	@Before
	public void setupData() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sqlProduct = "delete from product where product_code='DOMI235'";
		jdbcTemplate.update(sqlProduct);

		product = new Product("DOMI235", "Pizza Green", "Good !!");
		price = new Price("DOMI234", 345.66, "SEC - 44, Gurgaon", "Great !!");
	}

	@Test
	public void testInsertPriceData() {
		productDao.insertPriceData(price);
		List<Price> priceList = productDao.getPriceListByCode(price
				.getProductCode());
		assertFalse(0 == priceList.size());
	}

	@Test
	public void testAddProduct() {
		productDao.addProduct(product);
		Product gotProduct = productDao.getProductByCode(product
				.getProductCode());
		assertEquals(product.getProductCode(), gotProduct.getProductCode());
	}

	@Test
	public void testGetProductList() {
		productDao.getProductList();
		assertFalse(0 == productDao.getProductList().size());
	}

	/*
	 * @Test public void testgetProductByCode() { Product productGet =
	 * productDao.getProductByCode("DOMI234"); assertEquals("DOMI234",
	 * productGet.getProductCode()); }
	 */

	@Test
	public void testGetPriceListByCode() {
		List<Price> priceList = productDao.getPriceListByCode(price
				.getProductCode());
		assertFalse(0 == priceList.size());
	}
}
