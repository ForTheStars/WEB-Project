package com.gizii.cld.po;

import java.io.Serializable;
import java.util.UUID;



public class Goods implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer Id;
	private String name;
	private String intro;
	private Integer norm;
	private Double unitPrice;
	private Double price;
	private Double bPrice;
	private Double vipPrice;
	private Integer Num;
	private Integer inventory;
	private String imageUrl;
	private Category category;
	private boolean isCombo;
	private UUID uuid;
	private UUID comboUuid;
	private Integer privilege;
	
	
	
	
	public Integer getPrivilege() {
		return privilege;
	}
	public void setPrivilege(Integer privilege) {
		this.privilege = privilege;
	}
	public UUID getComboUuid() {
		return comboUuid;
	}
	public void setComboUuid(UUID comboUuid) {
		this.comboUuid = comboUuid;
	}
	public boolean isCombo() {
		return isCombo;
	}
	public void setCombo(boolean isCombo) {
		this.isCombo = isCombo;
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public Integer getNorm() {
		return norm;
	}
	public void setNorm(Integer norm) {
		this.norm = norm;
	}
	public Double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
	public Double getbPrice() {
		return bPrice;
	}
	public void setbPrice(Double bPrice) {
		this.bPrice = bPrice;
	}
	public Double getVipPrice() {
		return vipPrice;
	}
	public void setVipPrice(Double vipPrice) {
		this.vipPrice = vipPrice;
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
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public UUID getUuid() {
		return uuid;
	}
	public void setUuid(UUID uuid) {
		this.uuid = uuid;
	}
	
	

	
	
}
