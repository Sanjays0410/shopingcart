package com.cruds.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class Product {

	String itemid;
	String itemname;
	String itemprice;
	String image;
	String qty;
	private Date issue_date;
	
	public Product() {
		super();
	}

	public Product(String itemid, String itemname, String itemprize, String image) {
		super();
		this.itemid = itemid;
		this.itemname = itemname;
		this.itemprice = itemprize;
		this.image = image;
	}


	public Product(String itemid, String itemname, String itemprize, String image, String qty) {
		super();
		this.itemid = itemid;
		this.itemname = itemname;
		this.itemprice = itemprize;
		this.image = image;
		this.qty = qty;
	}


	public Product(String itemname, String itemprize, String qty) {
		super();
		this.itemname = itemname;
		this.itemprice = itemprize;
		this.qty = qty;
	}

	public Date getIssue_date() {
		return issue_date;
	}

	public void setIssue_date(Date issue_date) {
		this.issue_date = issue_date;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public String getItemid() {
		return itemid;
	}
	public void setItemid(String itemid) {
		this.itemid = itemid;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getItemprice() {
		return itemprice;
	}
	public void setItemprice(String itemprize) {
		this.itemprice = itemprize;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	public List<Product> remove(List<Product> list1, String itemid) {
		for(Product cid : list1) {
			if(cid.equals(itemid)) {
				list1.remove(cid);
			}
				
		}
		
		return list1;
	}
	public List<Product> addtocart(List<Product> list,Product p)
	
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
		return "Product [itemid=" + itemid + ", itemname=" + itemname + ", itemprize=" + itemprice + ", image=" + image
				+ ", qty=" + qty + "]";
	}


}
