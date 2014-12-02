package com.gizii.mapper;

import java.util.List;

import com.gizii.po.Admin;

public interface AdminMapper {
	public void add(Admin admin);
	
	public void delete(int Id);
	
	public void update(Admin admin);
	
	public Admin showById(int Id);
	
	public Admin getByName(String username);
	
	public List<Admin> showAll();
	
}
