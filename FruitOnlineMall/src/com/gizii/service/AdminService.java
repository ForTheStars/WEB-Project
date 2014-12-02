package com.gizii.service;



import java.util.List;

import com.gizii.po.Admin;

public interface AdminService {
	
	public void add(Admin admin);
	
	public void delete(int Id);
	
	public void update(Admin admin);
	
	public Admin show(int Id);
	
	public Admin getByName(String userame);
	
	public List<Admin> showAll();
	
	public boolean logIn(Admin admin);
}
