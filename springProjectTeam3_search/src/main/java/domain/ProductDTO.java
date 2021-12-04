package domain;

import java.sql.Timestamp;

public class ProductDTO {

	private int product_number;
	private int productCategory_number;
	private String product_name;
	private int product_price;
	private int product_stock;
	private String product_desc;
	private Timestamp product_date;
	private String product_sell;
	
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public int getProductCategory_number() {
		return productCategory_number;
	}
	public void setProductCategory_number(int productCategory_number) {
		this.productCategory_number = productCategory_number;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}
	public String getProduct_desc() {
		return product_desc;
	}
	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}
	public Timestamp getProduct_date() {
		return product_date;
	}
	public void setProduct_date(Timestamp product_date) {
		this.product_date = product_date;
	}
	public String getProduct_sell() {
		return product_sell;
	}
	public void setProduct_sell(String product_sell) {
		this.product_sell = product_sell;
	}
	
	
	
}
