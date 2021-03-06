package com.gizii.cld.dao;

import java.util.List;

import com.gizii.cld.po.Email;

public interface EmailDAO {
	
	public void add(Email email);
	
	public void delete(int Id);
		
	public int getId(String email);
	
	public List<Email> getAll(int admin_Id);
}
