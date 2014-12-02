package com.gizii.dao;

import com.gizii.po.User;

public interface UserDAO {
	public void add(User user);
	
	public void deleteAll();
}
