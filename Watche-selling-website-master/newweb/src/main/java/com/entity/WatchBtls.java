package com.entity;

public class WatchBtls {
	private int watchId;
	private String watchName;
	private String model;
	private double price;
	//private int stock;
	private String watchCategory;
	private String status;
	
	private String photoName;
	public WatchBtls() {
		super();
		
	}
	
	public WatchBtls(String watchName, String model, Double price, String watchCategory, String status,
			String photoName) {
		super();
		this.watchName = watchName;
		this.model = model;
		this.price = price;
	//	this.stock=stock;
		this.watchCategory = watchCategory;
		this.status = status;
		this.photoName = photoName;
		
	}
	public int getWatchId() {
		return watchId;
	}
	public void setWatchId(int watchId) {
		this.watchId = watchId;
	}
	public String getWatchName() {
		return watchName;
	}
	public void setWatchName(String watchName) {
		this.watchName = watchName;
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
	public void setPrice(double price) {
		this.price = price;
	}

//	public int getStock() {
//		return stock;
//	}
//
//	public void setStock(int stock) {
//		this.stock = stock;
//	}

	public String getWatchCategory() {
		return watchCategory;
	}
	public void setWatchCategory(String watchCategory) {
		this.watchCategory = watchCategory;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	@Override
	public String toString() {
		return "WatchBtls [watchId=" + watchId + ", watchName=" + watchName + ", model=" + model + ", price=" + price+", watchCategory=" + watchCategory + ", status=" + status + ", photoName=" + photoName + "]";
	}
}
