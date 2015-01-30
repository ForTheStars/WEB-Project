package com.gizii.cld.dao;

import com.gizii.cld.po.User;

public interface UserDAO {
	public void add(User user);
	
	public void deleteAll();
}
