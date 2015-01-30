package com.gizii.cld.dao.impl;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.gizii.cld.dao.UserDAO;
import com.gizii.cld.mapper.UserMapper;
import com.gizii.cld.po.User;

@Repository("userDao")
public class UserDAOImpl implements UserDAO {
	@Resource
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public void add(User user) {
		sessionTemplate.getMapper(UserMapper.class).add(user);
	}
	
	@Override
	public void deleteAll(){
		sessionTemplate.getMapper(UserMapper.class).deleteAll();
	}

}
