package com.gizii.po;

public class Goods {
	private int Id;
	private String name;
	private String intro;
	private Double unitPrice;
	private Double vipPrice;
	private Integer Num;
	private Integer inventory;
	private String imageUrl;
	private Category category;
	
	
	
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public Double getVipPrice() {
		return vipPrice;
	}
	public void setVipPrice(Double vipPrice) {
		this.vipPrice = vipPrice;
	}
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Integer getNum() {
		return Num;
	}
	public void setNum(Integer num) {
		Num = num;
	}
	public Integer getInventory() {
		return inventory;
	}
	public void setInventory(Integer inventory) {
		this.inventory = inventory;
	}
	
	
}
