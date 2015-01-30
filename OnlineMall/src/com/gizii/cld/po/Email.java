package com.gizii.cld.po;

public class Email {
	private int Id;
	private String email;
	private Admin admin;
	
	
	public Admin getUser() {
		return admin;
	}
	public void setUser(Admin admin) {
		this.admin = admin;
	}
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
