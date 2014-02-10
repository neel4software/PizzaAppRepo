package com.pzzapp.controller;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;
import org.springframework.test.context.support.DirtiesContextTestExecutionListener;
import org.springframework.test.context.transaction.TransactionalTestExecutionListener;

import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import com.pzzapp.domain.Product;
import com.pzzapp.services.ProductService;

@RunWith(MockitoJUnitRunner.class)
@ContextConfiguration(locations = "classpath:/spring-config.xml")
@TestExecutionListeners({ DependencyInjectionTestExecutionListener.class,
		DirtiesContextTestExecutionListener.class,
		TransactionalTestExecutionListener.class })
public class ProductControllerTest {

	private MockMvc mockMvc;

	List<Product> productList;

	@Autowired
	@Mock
	private ProductService productService;

	@Autowired
	@Mock
	private ProductController productController;

	@Before
	public void setupData() {
		mockMvc = MockMvcBuilders.standaloneSetup(productController).build();

		productList = new ArrayList<Product>();
		productList.add(new Product("DOMI234", "Dominos", "Excellent !!"));
		productList.add(new Product("PIZZ101", "PizzaHut", "Good !!"));
	}

	@Test
	public void testGetProductList() throws Exception {

		when(productService.getProductList()).thenReturn(productList);
		mockMvc.perform(get("/productList")).andExpect(status().isOk());

	}

	@Test
	public void testGetProduct() throws Exception {

		when(productService.getProductByCode("DOMI234")).thenReturn(
				new Product("DOMI234", "Dominos", "Excellent !!"));
		mockMvc.perform(get("/getProduct").param("code", "DOMI234")).andExpect(status().isOk());

	}

	@Test
	public void testGetInputForm() throws Exception {
		mockMvc.perform(get("/addPrice")).andExpect(status().isOk());
	}


	@Test
	public void testGetProductInputForm() throws Exception {
		mockMvc.perform(get("/addProduct")).andExpect(status().isOk());

	}
}
