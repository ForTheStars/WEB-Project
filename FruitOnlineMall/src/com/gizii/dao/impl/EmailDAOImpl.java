package com.gizii.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.gizii.dao.EmailDAO;
import com.gizii.mapper.EmailMapper;
import com.gizii.po.Email;

@Repository("emailDao")
public class EmailDAOImpl implements EmailDAO {

	@Resource 
	private SqlSessionTemplate sessionTemplate;
	
	@Override
	public void add(Email email) {
		sessionTemplate.getMapper(EmailMapper.class).add(email);

	}

	@Override
	public void delete(int Id) {
		sessionTemplate.getMapper(EmailMapper.class).delete(Id);
	}

	@Override
	public int getId(String email) {
		return sessionTemplate.getMapper(EmailMapper.class).getId(email);
	}

	@Override
	public List<Email> getAll(int admin_Id) {
		return sessionTemplate.getMapper(EmailMapper.class).getAll(admin_Id);
	}
	
	public SqlSessionTemplate getSessionTemplate() {
		return sessionTemplate;
	}

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}
}
