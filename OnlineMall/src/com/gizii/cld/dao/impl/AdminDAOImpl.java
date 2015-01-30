package com.gizii.cld.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.gizii.cld.dao.AdminDAO;
import com.gizii.cld.mapper.AdminMapper;
import com.gizii.cld.po.Admin;

@Repository("adminDao")
public class AdminDAOImpl implements AdminDAO {
	@Resource
	private SqlSessionTemplate sessionTemplate;
	
	public void add(Admin admin) {
		sessionTemplate.getMapper(AdminMapper.class).add(admin);
	}

	@Override
	public void delete(int Id) {
		sessionTemplate.getMapper(AdminMapper.class).delete(Id);

	}

	@Override
	public void updata(Admin admin) {
		sessionTemplate.getMapper(AdminMapper.class).update(admin);

	}

	@Override
	public Admin showById(int Id) {
		Admin admin = sessionTemplate.getMapper(AdminMapper.class).showById(Id);
		return admin;
		
	}

	@Override
	public List<Admin> showAll() {
		List<Admin> admins = new ArrayList<Admin>();
		admins = sessionTemplate.getMapper(AdminMapper.class).showAll();
		return admins;
	}

	@Override
	public Admin getByName(String username){
		return sessionTemplate.getMapper(AdminMapper.class).getByName(username);
	}
	
	
	public SqlSessionTemplate getSessionTemplate() {
		return sessionTemplate;
	}

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}
}
