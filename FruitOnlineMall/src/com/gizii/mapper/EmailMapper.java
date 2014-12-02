package com.gizii.mapper;

import java.util.List;

import com.gizii.po.Email;

public interface EmailMapper {
	public void add(Email email);
	
	public void delete(int Id);
		
	public int getId(String email);
	
	public List<Email> getAll(int admin_Id);
}
