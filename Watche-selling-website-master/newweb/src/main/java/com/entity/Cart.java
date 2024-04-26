package com.entity;

public class Cart {
	private int cid;
	private int wid;
	private int userId;
	private String Watcname;
	private String model;
	private Double price;
	private double totalPrice;

	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getWatcname() {
		return Watcname;
	}
	public void setWatcname(String watcname) {
		Watcname = watcname;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalamt) {
		this.totalPrice = totalamt;
	}
	
	

}
