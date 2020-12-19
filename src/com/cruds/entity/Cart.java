 package com.cruds.entity;
import java.util.ArrayList;
import java.util.List;

public class Cart {

	private Product product;
	 private String quantity;
	
	 
	public Cart() {
		super();
	}
	public Cart(Product product, String quantity) {
		super();
		this.product = product;
		this.quantity = quantity;
	}
	
	public Cart(Product product) {
		super();
		this.product = product;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product; 
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	
	public 	List<Product> addtocart( List<Product> list,Product p)
	{
		if(list==null)
		{
			list=new ArrayList<>();
		}
		list.add(p);
				
		return list;
	}
	
	@Override
	public String toString() {
		return "Cart [product=" + product + ", quantity=" + quantity + "]";
	}
	

}
