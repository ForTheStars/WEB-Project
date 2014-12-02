package com.gizii.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gizii.dao.impl.UserDAOImpl;
import com.gizii.po.User;
import com.gizii.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDAOImpl userDao;
	
	@Override
	public void add(User user) {
		userDao.add(user);

	}

	@Override
	public void deleteAll() {
		userDao.deleteAll();
		
	}

	public UserDAOImpl getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDAOImpl userDao) {
		this.userDao = userDao;
	}

	
}
