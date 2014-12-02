package com.gizii.dao;

import java.util.List;

import com.gizii.po.Admin;

public interface AdminDAO {
	public void add(Admin admin);
	public void delete(int Id);
	public void delete(int Id);
	public void delete(int Id);
	public void updata(Admin admin);
	public Admin showById(int Id);
	public Admin getByName(String username);
	public List<Admin> showAll();
}
