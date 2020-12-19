package com.cruds.entity;

import java.util.Date;

public class Orderitem {
	
	private int orderid;
	private int itemid;
	private String email;
	private String name;
	private String price;
	private String Qty;
	
	private String Image;
	private String total;
	private Date order_date;
	private String status;
	
	public Orderitem() {
		super();
	}

	public Orderitem(int orderid) {
		super();
		this.orderid = orderid;
	}


	public Orderitem(String email, String total, Date issue_date, String status) {
		super();
		this.email = email;
		this.total = total;
		this.order_date = issue_date;
		this.status = status;
	}


	

	public Orderitem(String name, String price, String qty) {
		super();
		this.name = name;
		this.price = price;
		Qty = qty;
	}

	public Orderitem(int orderid, String price, String qty, String name, String status , Date issue_date, String image,int itemid) {
		super();
		this.orderid = orderid;
		this.price = price;
		Qty = qty;
		this.name = name;
		this.status = status;
		this.order_date = issue_date;
        this.Image = image;
        this.itemid=itemid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
 
	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getItemid() {
		return itemid;
	}
	public void setItemid(int itemid) {
		this.itemid = itemid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getQty() {
		return Qty;
	}
	public void setQty(String qty) {
		Qty = qty;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return  String.valueOf(orderid) ;
	}

	
}
