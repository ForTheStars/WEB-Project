package com.gizii.cld.po;

import java.util.Date;
import java.util.List;


public class Orders {
	private int Id;
	private int Status;
	private double money;
	private List<Goods> goods;
	private String address;
	private String message;
	private Date time_OK;
	private User user;
	
	
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public List<Goods> getGoods() {
		return goods;
	}
	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getTime_OK() {
		return time_OK;
	}
	public void setTime_OK(Date time_OK) {
		this.time_OK = time_OK;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	

	
}
