package com.pzzapp.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;
import com.pzzapp.domain.Price;
import com.pzzapp.domain.Product;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao {

	@Autowired
	DataSource dataSource;

	@Override
	public void insertPriceData(Price price) {
		String sql = "INSERT INTO PRICE "
				+ "(PRODUCT_CODE, PRICE, STORE_NAME, NOTES) VALUES (?, ?, ?,?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(
				sql,
				new Object[] { price.getProductCode(), price.getPrice(),
						price.getStoreName(), price.getNotes() });

	}

	@Override
	public List<Product> getProductList() {
		String sql = "SELECT PRODUCT_CODE, PRODUCT_NAME, PRODUCT_DESCRIPTION FROM PRODUCT";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<Product> productList = jdbcTemplate.query(sql,
				new BeanPropertyRowMapper<Product>(Product.class));
		return productList;

	}

	@Override
	public List<String> getCodeList() {
		String sql = "SELECT PRODUCT_CODE FROM PRODUCT";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		SqlRowSet rs = jdbcTemplate.queryForRowSet(sql);
		List<String> codeList = new ArrayList<String>();
		while (rs.next()) {
			codeList.add(rs.getString(1));
		}
		return codeList;

	}

	@Override
	public void addProduct(Product product) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String sql = "INSERT INTO PRODUCT "
				+ "(PRODUCT_CODE, PRODUCT_NAME, PRODUCT_DESCRIPTION) VALUES (?, ?,?)";

		jdbcTemplate.update(sql, new Object[] { product.getProductCode(),
				product.getProductName(), product.getProductDescription() });
	}

	@Override
	public Product getProductByCode(String code) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "SELECT * FROM PRODUCT WHERE PRODUCT_CODE = (?)";
		List<Product> priceList = jdbcTemplate.query(sql,
				new Object[] { code }, new BeanPropertyRowMapper<Product>(
						Product.class));
		return priceList.get(0);
	}

	@Override
	public List<Price> getPriceListByCode(String code) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "SELECT * FROM PRICE WHERE PRODUCT_CODE = (?)";
		List<Price> priceList = jdbcTemplate.query(sql, new Object[] { code },
				new BeanPropertyRowMapper<Price>(Price.class));
		return priceList;
	}
}
