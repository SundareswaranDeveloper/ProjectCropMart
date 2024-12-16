package org.newserver;

public class SellCheck {

	private String product;
	private int quantity;
	private float price;
	private String salesend;
	private String expiry;
	private String image;
	private String userId;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getSalesend() {
		return salesend;
	}
	public void setSalesend(String salesend) {
		this.salesend = salesend;
	}
	public String getExpiry() {
		return expiry;
	}
	public void setExpiry(String expiry) {
		this.expiry = expiry;
	}
	public SellCheck(String product,int quantity,float price,String salesend,String expiry,String image,String userId) {
		this.product = product;
		this.quantity = quantity;
		this.price = price;
		this.salesend = salesend;
		this.expiry = expiry;
		this.image = image;
		this.userId = userId;
	}
	
}
