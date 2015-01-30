package com.gizii.cld.mapper;

import java.util.List;

import com.gizii.cld.po.Admin;

public interface AdminMapper {
	public void add(Admin admin);
	
	public void delete(int Id);
	
	public void update(Admin admin);
	
	public Admin showById(int Id);
	
	public Admin getByName(String username);
	
	public List<Admin> showAll();
	
}