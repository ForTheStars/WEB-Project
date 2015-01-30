package com.gizii.cld.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gizii.cld.dao.impl.UserDAOImpl;
import com.gizii.cld.po.User;
import com.gizii.cld.service.UserService;

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
