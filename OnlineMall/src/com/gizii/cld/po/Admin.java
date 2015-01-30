package com.gizii.cld.po;

import java.util.Date;

public class Admin {
	private String username;
	private String password;
	private int Id;
	private int userType;
	private Date lastLogIn;
	private String last_IP;
	
	

	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
