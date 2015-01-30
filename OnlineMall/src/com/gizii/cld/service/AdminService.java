package com.gizii.cld.service;

import java.util.List;

import com.gizii.cld.po.Admin;

public interface AdminService {
	
	public void add(Admin admin);
	
	public void delete(int Id);
	
	public void update(Admin admin);
	
	public Admin show(int Id);
	
	public Admin getByName(String userame);
	
	public List<Admin> showAll();
	
	public Admin logIn(Admin admin);
	
	public void verify(String password,String repPassword);
}