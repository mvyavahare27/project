package com.met.entity;

import java.sql.Date;

public class Order {
	
	//private int custId;
	private int orderId;
	private int itemqty;
	private int containerQty;
	private String item_Name;
/*	private String duration;*/
	 
	public Order() {
		super();
	}
	

private Order(int orderId, int itemqty, int containerQty, String item_Name) {
	this();
	this.orderId = orderId;
	this.itemqty = itemqty;
	this.containerQty = containerQty;
	this.item_Name = item_Name;
}




/*
	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}*/

	public int getOrderId() {
	return orderId;
}


public void setOrderId(int id) {
	this.orderId = id;
}


	public int getItemqty() {
		return itemqty;
	}

	public void setItemqty(int itemqty) {
		this.itemqty = itemqty;
	}

	public int getContainerQty() {
		return containerQty;
	}

	public void setContainerQty(int containerQty) {
		this.containerQty = containerQty;
	}

	public String getItem_Name() {
		return item_Name;
	}

	public void setItem_Name(String item_Name) {
		this.item_Name = item_Name;
	}


	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", itemqty=" + itemqty + ", containerQty=" + containerQty + ", item_Name="
				+ item_Name + "]";
	}

	

	/*public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}*/

	

/*	public Date getDrop_Date() {
		return drop_Date;
	}

	public void setDrop_Date(Date drop_Date) {
		this.drop_Date = drop_Date;
	}

	public Date getPickup_Date() {
		return pickup_Date;
	}

	public void setPickup_Date(Date pickup_date) {
		this.pickup_Date = pickup_date;
	}*/

	

	/*public int getCustId() {
		return custId;
	}

	public void setCustId(int custId) {
		this.custId = custId;
	}
*/
	

	
	
	
	
	
	

}
