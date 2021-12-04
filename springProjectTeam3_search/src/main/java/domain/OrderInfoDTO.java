package domain;

import java.sql.Timestamp;

public class OrderInfoDTO {

	private int orderInfo_number;
	private String user_id;
	private int product_number;
	private Timestamp orderInfo_date;
	private String orderInfo_address1;
	private String orderInfo_address2;
	private String orderInfo_address3;
	private String orderInfo_productName;
	private int orderInfo_count;
	private int orderInfo_price;
	private String orderInfo_status;
	private String orderInfo_receiverName;
	private String orderInfo_receiverPhone;
	
	public int getOrderInfo_number() {
		return orderInfo_number;
	}
	public void setOrderInfo_number(int orderInfo_number) {
		this.orderInfo_number = orderInfo_number;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public Timestamp getOrderInfo_date() {
		return orderInfo_date;
	}
	public void setOrderInfo_date(Timestamp orderInfo_date) {
		this.orderInfo_date = orderInfo_date;
	}
	public String getOrderInfo_address1() {
		return orderInfo_address1;
	}
	public void setOrderInfo_address1(String orderInfo_address1) {
		this.orderInfo_address1 = orderInfo_address1;
	}
	public String getOrderInfo_address2() {
		return orderInfo_address2;
	}
	public void setOrderInfo_address2(String orderInfo_address2) {
		this.orderInfo_address2 = orderInfo_address2;
	}
	public String getOrderInfo_address3() {
		return orderInfo_address3;
	}
	public void setOrderInfo_address3(String orderInfo_address3) {
		this.orderInfo_address3 = orderInfo_address3;
	}
	public String getOrderInfo_productName() {
		return orderInfo_productName;
	}
	public void setOrderInfo_productName(String orderInfo_productName) {
		this.orderInfo_productName = orderInfo_productName;
	}
	public int getOrderInfo_count() {
		return orderInfo_count;
	}
	public void setOrderInfo_count(int orderInfo_count) {
		this.orderInfo_count = orderInfo_count;
	}
	public int getOrderInfo_price() {
		return orderInfo_price;
	}
	public void setOrderInfo_price(int orderInfo_price) {
		this.orderInfo_price = orderInfo_price;
	}
	public String getOrderInfo_status() {
		return orderInfo_status;
	}
	public void setOrderInfo_status(String orderInfo_status) {
		this.orderInfo_status = orderInfo_status;
	}
	public String getOrderInfo_receiverName() {
		return orderInfo_receiverName;
	}
	public void setOrderInfo_receiverName(String orderInfo_receiverName) {
		this.orderInfo_receiverName = orderInfo_receiverName;
	}
	public String getOrderInfo_receiverPhone() {
		return orderInfo_receiverPhone;
	}
	public void setOrderInfo_receiverPhone(String orderInfo_receiverPhone) {
		this.orderInfo_receiverPhone = orderInfo_receiverPhone;
	}
	
	
	
}
