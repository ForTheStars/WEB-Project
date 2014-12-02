package com.gizii.po;

import java.util.Date;


public class User {
	private int id;
	private int userType;
	private Date lastLogIn;
	private String last_IP;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserType() {
		return userType;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
	public Date getLastLogIn() {
		return lastLogIn;
	}
	public void setLastLogIn(Date lastLogIn) {
		this.lastLogIn = lastLogIn;
	}
	public String getLast_IP() {
		return last_IP;
	}
	public void setLast_IP(String last_IP) {
		this.last_IP = last_IP;
	}
	
	
}
